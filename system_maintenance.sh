#!/bin/bash

# 1. Clear Cache Files
echo "Clearing cache files..."
sudo sync; echo 1 > /proc/sys/vm/drop_caches
echo "Cache cleared successfully."

# 2. Monitor Disk Space Usage
echo "Checking disk space usage..."
df -h > /var/log/disk_usage.log
echo "Disk space usage logged in /var/log/disk_usage.log."

# 3. Create a Backup of the /home directory
BACKUP_DIR="/var/backups"
BACKUP_FILE="home_backup_$(date +'%Y-%m-%d').tar.gz"
echo "Creating backup of /home directory..."
sudo tar -czf $BACKUP_DIR/$BACKUP_FILE /home
echo "Backup created at $BACKUP_DIR/$BACKUP_FILE."

echo "System maintenance tasks completed successfully."

