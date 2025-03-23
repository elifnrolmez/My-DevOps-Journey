#!/bin/bash

LOG_DIR="/var/logs"
DAYS=30
LOG_FILE="/var/log_cleanup.log"

echo "$(date +"%Y-%m-%d %H:%M:%S") - Log temizleme işlemi başladı." >> $LOG_FILE
find $LOG_DIR -type f -mtime +$DAYS -exec rm -f {} \;
echo "$(date +"%Y-%m-%d %H:%M:%S") - $DAYS günden eski loglar temizlendi." >> $LOG_FILE
