#!/bin/bash

total=$(cat logs/*.log | wc -l)
total_error=$(grep ERROR logs/*.log | wc -l)
total_warn=$(grep WARN logs/*.log | wc -l)
total_info=$(grep INFO logs/*.log | wc -l)

echo "Total log entries: $total" > reports/system_summary.txt
echo "Total ERROR entries: $total_error" >> reports/system_summary.txt
echo "Total WARN entries: $total_warn" >> reports/system_summary.txt
echo "Total INFO entries: $total_info" >> reports/system_summary.txt

cat reports/system_summary.txt
