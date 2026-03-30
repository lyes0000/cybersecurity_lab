#!/bin/bash

cut -d' ' -f3 logs/*.log | sort | uniq -c > reports/level_summary.txt

echo "Log lveel counts across all sats:"
cat reports/level_summary.txt
