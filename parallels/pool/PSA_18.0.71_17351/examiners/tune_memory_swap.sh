#!/bin/sh
### Copyright 1999-2025. WebPros International GmbH. All rights reserved.

[ -z "$PLESK_INSTALLER_DEBUG" ] || set -x
[ -z "$PLESK_INSTALLER_STRICT_MODE" ] || set -e

export LC_ALL=C
unset GREP_OPTIONS

RET_SUCCESS=0
RET_WARN=1
RET_FATAL=2

is_function_defined()
{
	local fn="$1"
	case "$(type $fn 2>/dev/null)" in
	*function*)
		return 0
		;;
	esac
	return 1
}

detect_platform()
{
	. /etc/os-release
	os_name="$ID"
	os_version="${VERSION_ID%%.*}"
	os_arch="$(uname -m)"
	if [ -e /etc/debian_version ]; then
		case "$os_arch" in
			x86_64)  pkg_arch="amd64" ;;
			aarch64) pkg_arch="arm64" ;;
		esac
		if [ -n "$VERSION_CODENAME" ]; then
			os_codename="$VERSION_CODENAME"
		else
			case "$os_name$os_version" in
				debian10) os_codename="buster"   ;;
				debian11) os_codename="bullseye" ;;
				debian12) os_codename="bookworm" ;;
				ubuntu18) os_codename="bionic"   ;;
				ubuntu20) os_codename="focal"    ;;
				ubuntu22) os_codename="jammy"    ;;
				ubuntu24) os_codename="noble"    ;;
			esac
		fi
	fi

	case "$os_name$os_version" in
		rhel7|centos7|cloudlinux7|virtuozzo7)
			package_manager="yum"
		;;
		rhel*|centos*|cloudlinux*|almalinux*|rocky*)
			package_manager="dnf"
		;;
		debian*|ubuntu*)
			package_manager="apt"
		;;
	esac

	if [ "$os_name" = "ubuntu" -o "$os_name" = "debian" ]; then
		PRODUCT_ROOT_D="/opt/psa"
	else
		PRODUCT_ROOT_D="/usr/local/psa"
	fi
}

checker_main()
{
	local fnprefix="$1"
	shift

	detect_platform
	# try to execute checker only if all attributes are detected
	[ -n "$os_name" -a -n "$os_version" ] || return $RET_SUCCESS

	for checker in "${fnprefix}_${os_name}${os_version}" "${fnprefix}_${os_name}" "${fnprefix}"; do
		if is_function_defined "$checker"; then
			local rc=$RET_SUCCESS
			"$checker" "$@" || rc=$?
			[ "$(( $rc & $RET_FATAL ))" = "0" ] || return $RET_FATAL
			[ "$(( $rc & $RET_WARN  ))" = "0" ] || return $RET_WARN
			return $rc
		fi
	done
	return $RET_SUCCESS
}

### Copyright 1999-2025. WebPros International GmbH. All rights reserved.

# echo message to product log and console (always visible)
pp_echo()
{
    if [ -n "$product_log" ] ; then
        echo "$@" >> "$product_log" 2>&1
    fi
    echo "$@" >&2
}

detect_vz()
{
	[ -z "$PLESK_VZ_RESULT" ] || return $PLESK_VZ_RESULT

	PLESK_VZ_RESULT=1
	PLESK_VZ=0
	PLESK_VE_HW_NODE=0
	PLESK_VZ_TYPE=

	local issue_file="/etc/issue"
	local vzcheck_file="/proc/self/status"
	[ -f "$vzcheck_file" ] || return 1

	local env_id=`sed -ne 's|^envID\:[[:space:]]*\([[:digit:]]\+\)$|\1|p' "$vzcheck_file"`
	[ -n "$env_id" ] || return 1
	if [ "$env_id" = "0" ]; then
		# Either VZ/OpenVZ HW node or unjailed CloudLinux
		PLESK_VE_HW_NODE=1
		return 1
	fi

	if grep -q "CloudLinux" "$issue_file" >/dev/null 2>&1 ; then
		return 1
	fi

	if [ -f "/proc/vz/veredir" ]; then
		PLESK_VZ_TYPE="vz"
	elif [ -d "/proc/vz" ]; then
		PLESK_VZ_TYPE="openvz"
	fi

	PLESK_VZ=1
	PLESK_VZ_RESULT=0
	return 0
}

# detects lxc and docker containers
detect_lxc()
{
	[ -z "$PLESK_LXC_RESULT" ] || return $PLESK_LXC_RESULT
	PLESK_LXC_RESULT=1
	PLESK_LXC=0
	if  { [ -f /proc/1/cgroup ] && grep -q 'docker\|lxc' /proc/1/cgroup; } || \
		{ [ -f /proc/1/environ ] && cat /proc/1/environ | tr \\0 \\n | grep -q "container=lxc"; };
	then
		PLESK_LXC_RESULT=0
		PLESK_LXC=1
	fi
	return "$PLESK_LXC_RESULT"
}
### Copyright 1999-2025. WebPros International GmbH. All rights reserved.
# vim:ft=sh

set_file_swap_params()
{
	local pleskswaprc='/etc/pleskswaprc'
	[ ! -f "$pleskswaprc" ] || . /etc/pleskswaprc
	[ -n "$PLESK_SWAP_PATH" ] || PLESK_SWAP_PATH='/pleskswap'
	[ -n "$PLESK_SWAP_SIZE" ] || PLESK_SWAP_SIZE='1G'
	[ -n "$PLESK_REQUIRED_MEMORY" ] || PLESK_REQUIRED_MEMORY='1G'

	FSTAB='/etc/fstab'
}

file_swap_is_required()
{
	local total_mem_mib=$(LC_ALL=C LANG=C free -m -t | awk '/^Total:/ { print $2 }')
	local required_mem_mib="`units2units $PLESK_REQUIRED_MEMORY M`"
	[ "$total_mem_mib" -lt "$required_mem_mib" ] || return 1
	pp_echo "Total amount of memory is less than minimal required size (${total_mem_mib}M < ${required_mem_mib}M)"
	return 0
}

file_swap_is_switched_off()
{
	case "${PLESK_SWAP:-}" in
		0|false|disable)
			pp_echo "Swapfile creation is disabled: envirinment vaiable \$PLESK_SWAP='$PLESK_SWAP'."
			return 0
		;;
	esac

	if [ -f "/etc/pleskswapdisable" ]; then
		pp_echo "Swapfile creation is disabled: file '/etc/pleskswapdisable' is present."
		return 0
	fi

	detect_vz
	if [ "$PLESK_VZ" = "1" ]; then
		pp_echo "Swapfile creation is disabled: installation into Virtuozzo container."
		return 0
	fi

	detect_lxc
	if [ "$PLESK_LXC" = "1" ]; then
		pp_echo "Swapfile creation is disabled: installation into Docker/LXC container."
		return 0
	fi

	return 1
}

file_swap_enable()
{
	if file_swap_status; then
		echo "Error: Plesk swapfile is already enabled." >&2
		return 1
	fi

	local swap_size_mb="`units2units $PLESK_SWAP_SIZE M`"

	pp_echo "===> Enable swapfile in $PLESK_SWAP_PATH"
	dd if=/dev/zero of="$PLESK_SWAP_PATH" bs=1M count="$swap_size_mb" status=none || return 1
	chmod 0600 "$PLESK_SWAP_PATH" || return 1
	mkswap "$PLESK_SWAP_PATH" || return 1
	if ! grep -qw "^$PLESK_SWAP_PATH" "${FSTAB}"; then
		cp -f "${FSTAB}" "${FSTAB}.saved_by_plesk"
		echo "$PLESK_SWAP_PATH none swap sw 0 0" >> "${FSTAB}"
	fi
	if swapon "$PLESK_SWAP_PATH"; then
		rm -f "${FSTAB}.saved_by_plesk"
		return 0
	else
		[ ! -f "${FSTAB}.saved_by_plesk" ] || mv -f "${FSTAB}.saved_by_plesk" "${FSTAB}"
		return 1
	fi
}

file_swap_status()
{
	[ -f "$PLESK_SWAP_PATH" ] || return 1
	grep -qw "^$PLESK_SWAP_PATH" "${FSTAB}" || return 1
	return 0
}

### Copyright 1999-2025. WebPros International GmbH. All rights reserved.

units2units() {
	local bytes
	local n="${1%%[^0-9]*}"
	case "${1,,}" in
		*[0-9]) bytes="$1" ;;
		*k|*kib) bytes="$(( $n * 1024 ** 1 ))" ;;
		*m|*mib) bytes="$(( $n * 1024 ** 2 ))" ;;
		*g|*gib) bytes="$(( $n * 1024 ** 3 ))" ;;
		*t|*tib) bytes="$(( $n * 1024 ** 4 ))" ;;
		*kb)     bytes="$(( $n * 1000 ** 1 ))" ;;
		*mb)     bytes="$(( $n * 1000 ** 2 ))" ;;
		*gb)     bytes="$(( $n * 1000 ** 3 ))" ;;
		*tb)     bytes="$(( $n * 1000 ** 4 ))" ;;
		*) echo "units2units: incorrect value '$1'" >&2; exit 1 ;;
	esac
	case "${2,,}" in
        k|kib) echo $(( $bytes / 1024 ** 1 )) ;;
        m|mib) echo $(( $bytes / 1024 ** 2 )) ;;
        g|gib) echo $(( $bytes / 1024 ** 3 )) ;;
        t|tib) echo $(( $bytes / 1024 ** 4 )) ;;
        kb)    echo $(( $bytes / 1000 ** 1 )) ;;
        mb)    echo $(( $bytes / 1000 ** 2 )) ;;
        gb)    echo $(( $bytes / 1000 ** 3 )) ;;
        tb)    echo $(( $bytes / 1000 ** 4 )) ;;
        "")    echo $bytes ;;
        *)     echo "Unknown unit: $2" >&2; exit 1 ;;
    esac
}

#!/bin/sh
### Copyright 1999-2025. WebPros International GmbH. All rights reserved.

tune_memory_swap()
{
	local mode="$1"
	[ "$mode" = 'install' ] || return 0  # clean install only
	set_file_swap_params
	file_swap_is_required || return 0
	! file_swap_is_switched_off || return 0  # disabled by admin
	! file_swap_status || return 0  # already enabled
	if ! file_swap_enable; then
		pp_echo "Failed to enable swapfile. Installation may fail or freeze due to insufficient memory."
		return "$RET_WARN"
	fi
}

product_log=
product_problems_log=
checker_main 'tune_memory_swap' "$1"
