#!/bin/bash

LOG_DIR="/home/adish/logs"

# Delete files older than 7 days
find $LOG_DIR -type f -mtime +7 -exec rm -f {} \;

echo "Old logs cleaned from $LOG_DIR"
