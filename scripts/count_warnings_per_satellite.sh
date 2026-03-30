#!/bin/bash

warnings_001=$(grep WARN logs/sat-001.log | wc -l)
warnings_002=$(grep WARN logs/sat-002.log | wc -l)

echo "WARN events in each satelite:"
echo "satelite 1: $warnings_001" 
echo "satelite 2: $warnings_002"

if [ "$warnings_001" -gt "$warnings_002" ]; then
	echo "sat-001 produced more warnings."
elif [ "$warnings_002" -gt "$warnings_001"  ]; then
	echo "sat-002 produced more warnings."
else
	echo "Both satellites produced equal warnings."
fi
