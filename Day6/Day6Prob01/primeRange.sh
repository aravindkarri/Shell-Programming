#!/bin/bash

read -p "Enter the first number:" a
read -p "Enter the second number:" b

for (( i=$a+1;i<=$b-1;i++ ))
do
	flag=0
	for (( j=2;j<=$i-1;j++ ))
	do
	if [[ $[ $i % $j ] = 0 ]]
	then
		flag=1
		break
	fi
done

if [[ $flag = 0 ]]
then
	echo "prime number between given range is " $i
fi
done

