#!/bin/bash
count=0;
total=0; 

cat grades_module_1_82022.csv | awk -F "," ' {print $2, $7}' > ./test.csv
cat test.csv | awk -F " " ' {print $2}'| tail -n+3 > ./nums.csv
cat nums.csv | awk '{ total += $1; count++ } END { print total/count }' nums.csv
