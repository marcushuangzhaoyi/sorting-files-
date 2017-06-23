#!/bin/bash
#author: Zhaoyi Huang
# usage example: ./sort.sh

#feel free to change Jan, Feb... to 1, 2.....

MONTHS=(Jan Feb Mar Apr May Jun Jul Aug Sep Oct Nov Dec)
for month in "${MONTHS[@]}"
do
	for item in `find ./ -type f -name "*$month*"`
	do
	if [ ! -d "./$month" ]; then
  	mkdir ./"$month"
	fi
	mv $item ./$month
	done
	done
