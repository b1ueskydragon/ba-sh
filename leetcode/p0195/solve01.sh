#!/bin/bash

ln=0
num=10
cat file.txt | while read line
do
  ln=$(( ln + 1 )) # $((...)) is faster than expr
  if [[ ${ln} -eq ${num} ]]; then
    echo "${line}"
  fi
done
