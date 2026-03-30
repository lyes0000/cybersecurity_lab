#!/bin/bash

errors_001=$(grep ERROR logs/sat-001.log | wc -l)
errors_002=$(grep ERROR logs/sat-002.log | wc -l)

echo "ERROR events in each satelite:"
echo "satelite 1: $errors_001" 
echo "satelite 2: $errors_002"



