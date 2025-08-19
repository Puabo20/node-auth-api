#!/bin/bash
# Automated Let's Encrypt ACME fix for Plesk SPA sites

DOMAIN="puaboverse.online"
WWWROOT="/var/www/vhosts/$DOMAIN/httpdocs"
USER="puaboverse_user"
EMAIL="Robert.white@puaboverse.online"

echo "=== Step 1: Create .well-known/acme-challenge directory ==="
mkdir -p "$WWWROOT/.well-known/acme-challenge"
chmod -R 755 "$WWWROOT/.well-known"
chown -R $USER:$USER "$WWWROOT/.well-known"

echo "=== Step 2: Add ACME rewrite rules to .htaccess ==="
HTACCESS="$WWWROOT/.htaccess"
cp "$HTACCESS" "$HTACCESS.bak.$(date +%s)"

if ! grep -q "ACME challenge requests" "$HTACCESS"; then
cat <<'EOF' | cat - "$HTACCESS" > "$HTACCESS.tmp" && mv "$HTACCESS.tmp" "$HTACCESS"
# Exclude Let's Encrypt ACME challenge
<IfModule mod_rewrite.c>
    RewriteEngine On

    # Allow ACME challenge requests to pass through
    RewriteCond %{REQUEST_URI} ^/\.well-known/acme-challenge/ [NC]
    RewriteRule ^ - [L]
</IfModule>

EOF
    echo "ACME rewrite rules added to .htaccess"
else
    echo "ACME rewrite rules already exist in .htaccess"
fi

echo "=== Step 3: Test serving a dummy ACME file ==="
TESTFILE="$WWWROOT/.well-known/acme-challenge/test.txt"
echo "letsencrypt-test" > "$TESTFILE"
curl -I "http://$DOMAIN/.well-known/acme-challenge/test.txt"

if curl -s "http://$DOMAIN/.well-known/acme-challenge/test.txt" | grep -q "letsencrypt-test"; then
    echo "✅ ACME test file accessible. Proceeding to request Let's Encrypt certificate."
    
    echo "=== Step 4: Request Let's Encrypt certificate via Plesk ==="
    plesk bin extension --exec letsencrypt cli.php \
        --domain "$DOMAIN" \
        -m "$EMAIL" \
        -w "$WWWROOT" \
        --redirect

    if [ $? -eq 0 ]; then
        echo "✅ Certificate successfully requested!"
    else
        echo "❌ Certificate request failed. Check Plesk logs."
    fi
else
    echo "❌ ACME test file is NOT accessible. Fix file permissions or rewrite rules first."
fi
