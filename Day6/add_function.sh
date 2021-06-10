#!/bin/bash -x

function add()
{
	sum=$(($1+$2+$3))
	return $sum
}

function print()
{
	echo "Hello $1"
}
#calling function
add 10 20 30
sum1=$?
add 20 40 30
sum2=$?

print $sum1
echo "return value of a function $?"

