#!/bin/bash -x

read -p "Enter a number: " num

count=0
for ((i=2;$num>1;i++))
do
	while [ $(($num%$i)) -eq 0 ]
	do
		arr[$((count++))]=$i
		num=$(($num/$i))
	done
done

echo "prime factors are: " ${arr[@]}
