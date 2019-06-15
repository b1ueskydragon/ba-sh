#!/usr/bin/env bash
# Read from the file words.txt and output the word frequency list to stdout.
# make an associative array first
awk '{for(i=1;i<=NF;i++) dict[$i]++} END {for(word in dict) print word, dict[word]}' words.txt | sort -k 2 -rn
