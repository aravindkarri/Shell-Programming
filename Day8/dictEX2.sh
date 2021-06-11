#!/bin/bash

declare -A sample

for ((i=1;i<=2;i++))
do
	read -p "Enter key: " k
	read -p "Enter value: " v
	sample[$k]=$v
done
echo ${#sample[@]}
#for ss in ${!sample[@]}
#do
#	echo $ss=${sample[$ss]}
#done

