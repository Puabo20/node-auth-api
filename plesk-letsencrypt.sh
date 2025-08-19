#!/bin/bash
# plesk-letsencrypt.sh
# Purpose: Request Let's Encrypt SSL for puaboverse.online using only Plesk commands

DOMAIN="puaboverse.online"
EMAIL="Robert.white@puaboverse.online"

echo "=== Step 1: Detect Plesk system user ==="
SYSUSER=$(plesk bin subscription --info "$DOMAIN" | grep "System user" | awk '{print $3}')

if [ -z "$SYSUSER" ]; then
    echo "[ERROR] Could not detect system user for $DOMAIN"
    exit 1
fi
echo "[OK] System user detected: $SYSUSER"

echo "=== Step 2: Create .well-known via Plesk CLI ==="
plesk bin site --create-directory "$DOMAIN" --path ".well-known/acme-challenge" --system-user "$SYSUSER"

echo "=== Step 3: Set permissions via Plesk CLI ==="
plesk bin site --set-permissions "$DOMAIN" -path ".well-known/acme-challenge" -system-user "$SYSUSER" -permission "755"

echo "=== Step 4: Test accessibility ==="
echo "letsencrypt-test" | plesk bin site --write-file "$DOMAIN" --path ".well-known/acme-challenge/test.txt"
curl -s http://$DOMAIN/.well-known/acme-challenge/test.txt | grep "letsencrypt-test" >/dev/null
if [ $? -eq 0 ]; then
    echo "[OK] .well-known is accessible via HTTP"
else
    echo "[ERROR] .well-known is NOT accessible. Check Plesk site configuration"
    exit 1
fi

echo "=== Step 5: Request Let's Encrypt certificate via Plesk ==="
plesk bin extension --exec letsencrypt cli.php \
--domain "$DOMAIN" \
-m "$EMAIL" \
--redirect

echo "=== Done! Check Plesk panel for SSL status ==="
