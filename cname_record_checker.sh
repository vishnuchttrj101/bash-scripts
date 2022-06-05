#!/bin/bash
k=$(cat $1|wc -l)

for (( i = 1; i <=$k; i++ )); do
	target=$(sed -n "${i}p" http.txt)
	dig $target|grep CNAME
	echo ""
	      
done

