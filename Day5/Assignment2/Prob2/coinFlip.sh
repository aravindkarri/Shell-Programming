#!/bin/bash -x

heads=1
randomNum=$((RANDOM%2))
if [ $randomNum -eq $heads ]
then
	echo "Heads"
else
	echo "Tails"
fi
