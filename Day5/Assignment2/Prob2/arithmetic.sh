#!/bin/bash -x

read -p "Enter value of first number a: " a
read -p "Enter value of second number b: " b
read -p "Enter value of third number c: " c

n1=$((a+b*c))
n2=$((c+a/b))
n3=$((a%b+c))
n4=$((a*b+c))

if [ $n1 -gt $n2 ] && [ $n1 -gt $n3 ] && [ $n1 -gt $n4 ]
then
	max=$n1
elif [ $n2 -gt $n1 ] && [ $n2 -gt $n3 ] && [ $n2 -gt $n4 ]
then
	max=$n2
elif [ $n3 -gt $n1 ] && [ $n3 -gt $n2 ] && [ $n3 -gt $n4 ]
then
        max=$n3
elif [ $n4 -gt $n1 ] && [ $n4 -gt $n2 ] && [ $n4 -gt $n3 ]
then
        max=$n4
fi

	echo "Maximum Number is: " $max
if [ $n1 -lt $n2 ] && [ $n1 -lt $n3 ] && [ $n1 -lt $n4 ]
then
        min=$n1
elif [ $n2 -lt $n1 ] && [ $n2 -lt $n3 ] && [ $n2 -lt $n4 ]
then
        min=$n2
elif [ $n3 -lt $n1 ] && [ $n3 -lt $n2 ] && [ $n3 -lt $n4 ]
then
        min=$n3
elif [ $n4 -lt $n1 ] && [ $n4 -lt $n2 ] && [ $n4 -lt $n3 ]
then
        min=$n4
fi

	echo "Minimum Number is: " $min
