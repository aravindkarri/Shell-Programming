#!/bin/bash -x

read -p "Enter The Number : " var

count=0
for ((i=2;$var>1;i++))
do
	while [[ $var%$i -eq 0 ]]
	do
		ar[$((count++))]=$i
		var=$var/$i
	done

done
echo ${ar[@]}
