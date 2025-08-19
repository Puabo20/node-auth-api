#!/bin/bash
# plesk-letsencrypt-fix.sh

DOMAIN="puaboverse.online"
EMAIL="Robert.white@puaboverse.online"
WWWROOT="/var/www/vhosts/$DOMAIN/httpdocs"

echo "=== Step 1: Check if web root exists ==="
if [ ! -d "$WWWROOT" ]; then
    echo "[ERROR] Web root not found: $WWWROOT"
    exit 1
fi

echo "=== Step 2: Detect Plesk system user ==="
SYSUSER=$(stat -c '%U' "$WWWROOT")
if [ -z "$SYSUSER" ]; then
    echo "[ERROR] Could not detect system user for $DOMAIN"
    exit 1
fi
echo "Detected system user: $SYSUSER"

echo "=== Step 3: Create .well-known/acme-challenge directory ==="
mkdir -p "$WWWROOT/.well-known/acme-challenge"
chmod -R 755 "$WWWROOT/.well-known"
chown -R "$SYSUSER:psaserv" "$WWWROOT/.well-known"

echo "=== Step 4: Add .htaccess rewrite exception for Let's Encrypt ==="
HTACCESS="$WWWROOT/.htaccess"
if ! grep -q "acme-challenge" "$HTACCESS" 2>/dev/null; then
    echo "
# Exclude Let's Encrypt ACME challenge from SPA rewrite
<IfModule mod_rewrite.c>
    RewriteEngine On
    RewriteCond %{REQUEST_URI} !^/\.well-known/acme-challenge/
</IfModule>
" >> "$HTACCESS"
    echo "Added ACME rewrite exception to $HTACCESS"
else
    echo "ACME rewrite exception already exists in $HTACCESS"
fi

echo "=== Step 5: Test serving a dummy file ==="
echo "letsencrypt-test" > "$WWWROOT/.well-known/acme-challenge/test.txt"
curl -s http://$DOMAIN/.well-known/acme-challenge/test.txt | grep "letsencrypt-test" >/dev/null
if [ $? -eq 0 ]; then
    echo "ACME test file is publicly accessible ✅"
else
    echo "[ERROR] ACME test file is NOT accessible ❌"
    exit 1
fi

echo "=== Step 6: Run Plesk Let's Encrypt ==="
plesk bin extension --exec letsencrypt cli.php \
  --domain "$DOMAIN" \
  -m "$EMAIL" \
  -w "$WWWROOT" \
  --redirect

echo "=== Done! Check Plesk for SSL certificate status ==="

