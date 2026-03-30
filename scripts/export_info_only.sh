#!/bin/bash

grep INFO logs/*.log | cut -d'"' -f2 > reports/info_only.txt
echo "Saved INFO message to reports/info_only.txt" 
