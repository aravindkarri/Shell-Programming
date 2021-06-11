#!/bin/bash

for ((i=0;i<3;i++))
do
	read -p "Enter a number: " num
	arr[$i]="$num"
done
sum=0
for ((i=0;i<${#arr[@]};i++))
do
	sum=$(($sum+${arr[$i]}))
	if [ $sum -eq 0 ]
	then
		echo "Sum of 3 elements is zero: " ${arr[@]}
	fi
done
