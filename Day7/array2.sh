#!/bin/bash -x

array=()
for ((i=0;i<5;i++))
do
	read -p "Enter an element" n
	array[$i]="$n"
done
echo ${array[@]}
