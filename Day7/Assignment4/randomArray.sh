#!/bin/bash -x

for ((i=0;i<10;i++))
do
	randomNum=$((100+(RANDOM%900)))
	array[$i]=$randomNum
done

largest=${array[0]}
secondLargest='unset'

for ((i=1;i<${#array[@]};i++))
do
	if [[ ${array[i]} > $largest ]]
	then
		secondLargest=$largest
		largest=${array[i]}
	elif (( ${array[i]} != $largest )) && { [[ $secondLargest = 'unset' ]] || [[ ${array[i]} > $secondLargest ]]; }
	then
		secondLargest=${array[i]}
	fi
done

smallest=${array[0]}
secondSmallest='unset'

for ((i=1;i<${#array[@]};i++))
do
	if [[ ${array[i]} < $smallest ]]
	then
		secondSmallest=$smallest
		smallest=${array[i]}
	elif (( ${array[i]} != $smallest )) && { [[ $secondSmallest = 'unset' ]] || [[ ${array[i]} < $secondSmallest ]]; }
	then
		secondSmallest=${array[i]}
	fi
done
echo "Second largest element is: " $secondLargest
echo "Second smallest elemnt is: " $secondSmallest
