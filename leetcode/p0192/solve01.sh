#!/usr/bin/env bash

# awk 1 add a line in the end of file if line does not exist
# tr -s ' ' helps multiple spaces ('   ') as a one(' ')
# sort -n, sort by as numeric

cat words01.txt | awk 1 | tr -s ' ' '\n' | awk '{a[$1]++} END {for(w in a) print w,a[w]}' | sort -k2 -nr