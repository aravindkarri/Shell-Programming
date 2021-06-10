#!/bin/bash

read -p "Enter first number: " a
read -p "Enter second number: " b

for (( i=a+1;i<=b-1;i++ ))
do
	flag=0
	for (( j=2;j<=i-1;j++ ))
	do
		if [ $(($i%$j)) -eq 0 ]
		then
			flag=1
			break
		fi
	done
if [ $flag -eq 0 ]
then
	echo "Primenumbers between $a and $b are : " $i
fi
done
