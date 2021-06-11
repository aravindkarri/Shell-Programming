#!/bin/bash -x

array=(1 3 4 5 6)

sum=0
for values in ${array[@]}
do
	sum=$(($sum+$values))
done
echo "sum of array elements: " $sum
