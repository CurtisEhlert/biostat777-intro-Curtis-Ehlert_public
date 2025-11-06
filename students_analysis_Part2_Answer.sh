#!/bin/bash

#Question answers, in descending order:
curl -O https://raw.githubusercontent.com/stephaniehicks/jhustatprogramming2025/main/projects/01-project/students.csv
cat students.csv
head -n 5 students.csv
tail -n 3 students.csv
wc -l students.csv
grep "Math" students.csv
grep "F" students.csv
sort -t, -k3,3n students.csv
tail -n +2 students.csv | cut -d, -f6 | sort | uniq
tail -n +2 students.csv | awk -F, '{sum+=$5} END {print sum/NR}'
sed -i 's/\bMath\b/Mathematics/g' students.csv


