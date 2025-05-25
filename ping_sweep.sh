#!/bin/bash

subnet="192.168.1"
log_file="latency_report.txt"
> $log_file

echo "Scanning subnet $subnet.0/24..."

for i in {1..254}; do
  ip="$subnet.$i"
  ping -c 1 -W 1 $ip > /dev/null 2>&1
  if [ $? -eq 0 ]; then
    latency=$(ping -c 1 $ip | grep 'time=' | awk -F'time=' '{print $2}' | awk '{print $1}')
    echo "$ip is alive. Latency: ${latency}ms" | tee -a $log_file
  fi
done

echo "Done. Results saved in $log_file"
