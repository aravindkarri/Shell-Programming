#!/bin/bash -x

count=0
for ((i=1;i<100;i++))
do
	firstNumber=$(($i/10))
	secondNumber=$(($i%10))
	if [ $firstNumber -eq $secondNumber ]
	then
		arr[$((count++))]=$i
	fi
done
echo "${arr[@]}"
