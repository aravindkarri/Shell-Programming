#!/bin/bash -x

for ((i=0;i<10;i++))
do
	randomNum=$((100+(RANDOM%900)))
	array[$i]=$randomNum
done
for ((i=0;i<10;i++))
do
	for ((j=$i+1;j<10;j++))
	do
		if [[ ${array[$i]} > ${array[$j]} ]]
		then
			temp=${array[$i]}
			array[$i]=${array[$j]}
			array[$j]=$temp
		fi
	done
done
echo "Sorted array elements : " ${array[@]}
echo "Second largest element : " ${array[8]}
echo "Second smallest element : " ${array[1]}
