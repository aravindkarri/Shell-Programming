#!/bin/bash -x

minVal=999
maxVal=0
for ((i=0;i<5;i++))
do
	randomNum=$(( 100 + RANDOM % 899 ))
	if [ $randomNum -gt $maxVal ]
	then
		maxVal=$randomNum
	fi
	if [ $randomNum -lt $minVal ]
	then
		minVal=$randomNum
	fi
done
echo $maxVal
echo $minVal
