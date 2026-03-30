#!/bin/bash

total=$(cat logs/*.log | wc -l)
info=$(grep INFO logs/*.log | wc -l)
error=$(grep ERROR logs/*.log | wc -l)
warn=$(grep WARN logs/*.log | wc -l)


errors_001=$(grep ERROR logs/sat-001.log | wc -l)
errors_002=$(grep ERROR logs/sat-002.log | wc -l)

if [ "$errors_001" -gt "$errors_002" ]; then
	less_stable="sat-001"
elif [ "$errors_002" -gt "$errors_001" ]; then
	less_stable="sat-002"
else
	less_stable="equal"
fi

{
	echo "ORION LOG SUMMARY"
	echo "Total log entries: $total"
	echo "INFO events: $info"
	echo "WARN events: $warn"
	echo "ERROR events: $error"
	echo "Less stable satellite: $less_stable"
} | tee reports/log_summary.txt
