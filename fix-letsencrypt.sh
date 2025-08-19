#!/bin/bash
# =========================================
# Let’s Encrypt Auto-Fix for Plesk + Nginx
# =========================================

# --- CONFIGURE ---
DOMAIN="puaboverse.online"
EMAIL="Robert.white@puaboverse.online"
WWWROOT="/var/www/vhosts/$DOMAIN/httpdocs"

# --- STEP 1: Get Plesk system user for the domain ---
SYSUSER=$(plesk bin subscription --info "$DOMAIN" | grep "System user:" | awk '{print $3}')

if [ -z "$SYSUSER" ]; then
    echo "[ERROR] Could not find system user for $DOMAIN"
    exit 1
fi

echo "[INFO] System user for $DOMAIN is $SYSUSER"

# --- STEP 2: Create ACME challenge folder with correct permissions ---
ACME_DIR="$WWWROOT/.well-known/acme-challenge"
mkdir -p "$ACME_DIR"
chmod -R 755 "$WWWROOT/.well-known"
chown -R "$SYSUSER":"psaserv" "$WWWROOT/.well-known"

# --- STEP 3: Add temporary test file to verify access ---
echo "letsencrypt-test" > "$ACME_DIR/test.txt"
echo "[INFO] Test file created at $ACME_DIR/test.txt"

# --- STEP 4: Verify accessibility via curl ---
HTTP_STATUS=$(curl -s -o /dev/null -w "%{http_code}" "http://$DOMAIN/.well-known/acme-challenge/test.txt")
if [ "$HTTP_STATUS" != "200" ]; then
    echo "[WARNING] ACME challenge folder not accessible via HTTP! Status: $HTTP_STATUS"
    echo "You may need to add an Nginx rule or disable redirects for /.well-known/"
else
    echo "[INFO] ACME challenge folder accessible (HTTP 200)"
fi

# --- STEP 5: Request Let’s Encrypt certificate ---
plesk bin extension --exec letsencrypt cli.php \
--domain "$DOMAIN" \
-m "$EMAIL" \
-w "$WWWROOT" \
--redirect

echo "[INFO] Done! Check Plesk for SSL status."
