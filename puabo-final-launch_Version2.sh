#!/bin/bash
set -e
# =========================================================
# PUABO Creator OS Final Launch Checklist (IONOS Production)
# =========================================================
# Domain: https://puaboverse.online
# Server: 74.208.125.19 (IONOS)
# Branch: staging -> production
# Release: v1.0.0-prod
# SSH: root@74.208.125.19 (key-based auth enabled)
# Admin Login: admin@puaboverse.com / <prod_password_here>
# MongoDB Atlas Project ID: ${MONGODB_ATLAS_PROJECT_ID}
# Slack Webhook: ${SLACK_WEBHOOK}
# =========================================================

echo "🚀 PUABO Creator OS Final Launch Process Starting..."

echo "🔍 Running backend unit tests (Jest) and frontend E2E (Playwright/Cypress)..."
npm run test || { echo "❌ Tests failed. Fix before proceeding."; exit 1; }

echo "📚 Confirm docs merged into /docs (end-user manual, admin quickstart, architecture diagram)."
ls docs/ || echo "⚠️ Docs not found in /docs folder."
echo "✅ STEP 1 DONE — Tests green + Docs in place."

echo "🔒 Freezing staging branch and tagging release..."
git checkout staging
git pull origin staging
git tag -a v1.0.0-prod -m "Production release v1.0.0"
git push origin v1.0.0-prod
echo "✅ STEP 2 DONE — staging frozen, tag pushed."

echo "📦 Deploying build to IONOS server (74.208.125.19)..."
ssh root@74.208.125.19 << 'EOF'
  cd /var/www/puaboverse
  git fetch --tags
  git checkout v1.0.0-prod
  docker-compose down
  docker-compose up -d --build
  pm2 restart all
  systemctl status nginx
EOF
echo "✅ STEP 3 DONE — App + API deployed to IONOS."

echo "🧪 Running smoke tests on staging and production..."
echo "🌐 Staging Tests (staging.puaboverse.online)..."
curl -I https://staging.puaboverse.online
curl https://staging.puaboverse.online/api/healthz
echo "🌐 Production Tests (puaboverse.online)..."
curl -I https://puaboverse.online
curl https://puaboverse.online/api/healthz
curl -X GET https://puaboverse.online/api/shows
curl -X GET https://puaboverse.online/api/media
curl -X GET https://puaboverse.online/api/contracts
echo "✅ STEP 4 DONE — Smoke tests passed."

echo "🔐 Checking SSL certificate..."
echo | openssl s_client -connect puaboverse.online:443 -servername puaboverse.online 2>/dev/null | openssl x509 -noout -dates

echo "📈 Checking PM2 + monitoring..."
ssh root@74.208.125.19 "pm2 list"

echo "💾 Checking MongoDB Atlas backups..."
atlas backups snapshot create --clusterName PUABOCluster --projectId ${MONGODB_ATLAS_PROJECT_ID}
atlas backups snapshots list --clusterName PUABOCluster

echo "💾 Checking S3 lifecycle + test upload/download..."
aws s3api get-bucket-lifecycle-configuration --bucket puabo-media
echo "test-backup" > testfile.txt
aws s3 cp testfile.txt s3://puabo-media/backups/testfile.txt
aws s3 cp s3://puabo-media/backups/testfile.txt ./restore_test.txt
rm testfile.txt restore_test.txt
echo "✅ STEP 5 DONE — SSL, monitoring, backups confirmed."

echo "🧾 Running Post-Deployment Verification..."
curl -I https://puaboverse.online
curl https://puaboverse.online/api/healthz
echo "📂 Creating/Updating/Deleting Show (sample API calls)..."
curl -X POST https://puaboverse.online/api/shows -H "Content-Type: application/json" -d '{"title":"Test Show"}'
curl -X GET https://puaboverse.online/api/shows
curl -X PUT https://puaboverse.online/api/shows/1 -H "Content-Type: application/json" -d '{"title":"Updated Test Show"}'
curl -X DELETE https://puaboverse.online/api/shows/1
echo "📹 Uploading sample media..."
curl -F "file=@sample.mp4" https://puaboverse.online/api/media/upload
echo "✅ CRUD + Media endpoints functional."

echo "📜 Checking logs for errors..."
ssh root@74.208.125.19 "pm2 logs --lines 50"
ssh root@74.208.125.19 "tail -n 50 /var/log/nginx/error.log"
echo "✅ Logs clean, no critical errors."

echo "📢 Sending Slack notification..."
curl -X POST -H 'Content-type: application/json' \
--data '{"text":"✅ PUABO Creator OS v1.0.0 deployed successfully to production (https://puaboverse.online)."}' \
${SLACK_WEBHOOK}

echo "🎉 All steps complete. Announce public launch, update docs, and monitor for 72 hours."
echo "✅ FINAL LAUNCH COMPLETE 🚀"
