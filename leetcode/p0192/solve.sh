#!/usr/bin/env bash
# Read from the file words.txt and output the word frequency list to stdout.

# awk 1 add a line in the end of file if line does not exist
#cat words.txt | awk 1 | while read line
#do
#  echo ${line} | tr ' ' '\n'
#done

awk '{for(i=1;i<=NF;i++) dict[$i]++} END {for(word in dict) print word, dict[word]}' words.txt | sort -k 2 -rn
