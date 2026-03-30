#!/bin/bash

grep ERROR logs/*.log > reports/all_errors.txt
echo "Saved ERROR entries to reports/all_errors.txt"

