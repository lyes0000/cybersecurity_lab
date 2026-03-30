#!/bin/bash

s001_errors=$(grep ERROR logs/sat-001.log | wc -l)
s002_errors=$(grep ERROR logs/sat-002.log | wc -l)

echo "ERROR counts:"
echo " sat-001: $s001_errors"
echo " sat-002: $s002_errors"

if [ "$s001_errors" -gt "$s002_errors" ]; then
	echo "Less stable sat is : sat-001"
elif [ "$s002_errors" -gt "$s001_errors" ]; then
	echo "Less stable sat is : sat-002"
else
	echo "Both satellites are equeally stable."
fi
