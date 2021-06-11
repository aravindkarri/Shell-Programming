#!/bin/bash -x

declare -A dict

for ((i=1;i<=3;i++))
do
	read -p "Enter dictionary key : " keys
	read -p "Enter dictionary value : " values
	dict[$keys]=$values
done

for key in ${!dict[@]}
do
        echo $key=${dict[$key]}
done

