#!/bin/bash

# === Variables ===
SOURCE_DIR="/home/adish/myapp"
BACKUP_DIR="/home/adish/backups"
TIMESTAMP=$(date +"%Y%m%d_%H%M%S")
BACKUP_FILE="backup_$TIMESTAMP.tar.gz"

# === Create backup ===
mkdir -p $BACKUP_DIR
tar -czf $BACKUP_DIR/$BACKUP_FILE $SOURCE_DIR

# === Log output ===
echo "Backup created: $BACKUP_DIR/$BACKUP_FILE"
