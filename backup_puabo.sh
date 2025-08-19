#!/bin/bash
set -e

DATE=$(date +"%Y-%m-%d_%H-%M-%S")
BACKUP_NAME="puabo_backup_${DATE}.tar.gz"
DB_NAME="BobbyBlanco"
DB_USER="admin"
DB_PASS="Momoney2025$$"

echo "Starting backup..."

mongodump --db "$DB_NAME" --username "$DB_USER" --password "$DB_PASS" --authenticationDatabase admin --out /tmp/db_backup

tar -czvf "$BACKUP_NAME" /tmp/db_backup /var/www

rm -rf /tmp/db_backup

echo "Backup complete: $BACKUP_NAME"
