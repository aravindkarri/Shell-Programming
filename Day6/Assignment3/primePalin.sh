#!/bin/bash

read -p "Enter a number: " num

reverse=0
originalNum=$num
function checkPrime()
{
	count=0
	for ((i=1;i<$num;i++))
	do
		if [ $(($num%$i)) -eq 0 ]
		then
			((count++))
		fi
	done
	if [ $count -eq 2 ]
	then
		echo "$num is primeNumber"
	else
		echo "$num is not a primeNumber"
	fi
}
function checkPalindrome()
{
	while [ $num -ne 0 ]
	do
		remainder=$(($num%10))
		reverse=$((($reverse*10)+$remainder))
		num=$(($num/10))
	done
	if [ $originalNum -eq $reverse ]
	then
		echo "$originalNum is palindrome"
	else
		echo "$originalNum is not a palindrome"
	fi
}

checkPrime $num
checkPalindrome $num
