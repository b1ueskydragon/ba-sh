#!/usr/bin/bash

target=test_$(date "+%Y%m%d")_01
END=6

for i in $(seq 1 $END);
do
	if [ -e ./$target ]; then
		echo "There is it"
		break
	else
		echo "wait.."
		sleep 3
		continue
	fi
done
