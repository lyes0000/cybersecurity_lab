#!/bin/bash

grep WARN logs/*.log | cut -d' ' -f1,2 > reports/warn_timestamps.txt

echo "Saved WARN timestamps to reports/warn_timestamps.txt"

