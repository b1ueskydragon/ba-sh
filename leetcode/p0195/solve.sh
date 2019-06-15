#!/bin/bash

NUM=10

sed "${NUM}!d" file.txt

sed "${NUM}q;d" file.txt
