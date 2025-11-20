#!/bin/bash

THRESHOLD=80   # alert if disk usage > 80%

# Get root filesystem usage (only number)
USAGE=$(df / | grep / | awk '{print $5}' | sed 's/%//')

echo "Current Disk Usage: $USAGE%"

if [ "$USAGE" -gt "$THRESHOLD" ]; then
    echo "WARNING: Disk usage is above ${THRESHOLD}%!"
else
    echo "Disk usage is normal."
fi
