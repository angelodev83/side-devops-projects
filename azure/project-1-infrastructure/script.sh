#!/bin/bash
# sys_ref.sh - Simple system information script

echo "===== SYSTEM INFO ====="

# Current date and time
echo "Date & Time: $(date)"

# System uptime
echo "Uptime: $(uptime -p)"

# CPU load averages
echo "CPU Load: $(uptime | awk -F 'load average:' '{print $2}')"

# Memory usage
echo "Memory Usage:"
free -h | awk 'NR==2{printf "Used: %s / Total: %s\n", $3,$2}'

# Disk usage
echo "Disk Usage:"
df -h / | awk 'NR==2{printf "Used: %s / Total: %s\n", $3,$2}'

echo "======================="




