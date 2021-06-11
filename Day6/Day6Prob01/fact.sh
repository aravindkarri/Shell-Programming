#!/bin/bash -x

read -p "enter a number: " a

fact=1
for (( i=a;i>=1;i-- ))
do
	fact=$(( fact *i ))
done

echo "factorial of given number is: " $fact
