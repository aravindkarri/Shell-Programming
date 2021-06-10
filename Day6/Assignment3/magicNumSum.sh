#!/bin/bash -x

isCorrect="False"
minBound=0
maxBound=100

while [ $isCorrect ]
do
	mid=$((($minBound+$maxBound)/2))
	read -p "IS $mid is correct number: True or False " isCorrect
	if [ $isCorrect == "True" ]
	then
		break
	else
		read -p "Is greater or less than to $mid : Greater or Lesser " isGrtOrLess
		if [ $isGrtOrLess == "Greater" ]
		then
			minBound=$mid
		else
			maxBound=$mid
		fi
	fi
done
magicNumber=$mid
while [ $magicNumber -ne 1 ]
do
	firstNum=$(( $magicNumber/10 ))
	secondNum=$(( $magicNumber%10 ))
	magicNumber=$(($firstNum+$secondNum))
	if [ $magicNumber -eq 1 ]
	then
		echo "$mid is a magic number"
		break
	else
		if [ $firstNum -eq 0 ]
		then
			echo "$mid is not a magic number"
			break
		fi
	fi
done
