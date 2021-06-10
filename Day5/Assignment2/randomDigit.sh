#!/bin/bash -x

sum=0
for (( i=0;i<5;i++ ))
do
	RandomDigits=$(( 10 + RANDOM % 89 ))
	sum=$(($sum + $RandomDigits))
done
Average=`awk 'BEGIN{printf("%0.2f",'$sum'/5)}'`
echo "Sum of 5 random digits:" $sum
echo "Average is:" $Average
