#!/bin/bash
LOG_FILE="/var/log/auth.log"
THRESHOLD=5

grep -i "failed\|invalid" "$LOG_FILE" | \
grep -oE "([0-9]{1,3}\.){3}[0-9]{1,3}" | \
sort | uniq -c | \
while read count ip; do
    if [[ $count -ge $THRESHOLD ]]; then
        echo "$(date): $count failed attempts from $ip" >> /var/log/auth_alerts.log
        echo "ALERT: $count failed login attempts from $ip"
    fi
done
