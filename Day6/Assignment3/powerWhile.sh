#!/bin/bash

read -p "Enter a number: " num

limit=256
power=0
res=0
while [[ $limit -gt $res && $power -le $num ]]
do
	((power++))
	res=$((2**$power))
	echo " 2 power $power = "$res
done
