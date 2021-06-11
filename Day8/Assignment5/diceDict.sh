#!/bin/bash -x

declare -A dict

dict=( [count1]=0 [count2]=0 [count3]=0 [count4]=0 [count5]=0 [count6]=0 )

limit=10

while [[ ${dict[count$die]} -le $limit ]]
do
	die=$((1+(RANDOM%6)))
	if [ $die -eq 1 ]
	then
		dict["count1"]=$(( ${dict["count1"]}+1 ))
	elif [ $die -eq 2 ]
	then
		dict["count2"]=$(( ${dict["count2"]}+1 ))
	elif [ $die -eq 3 ]
	then
		dict["count3"]=$(( ${dict["count3"]}+1 ))
	elif [ $die -eq 4 ]
	then
		dict["count4"]=$(( ${dict["count4"]}+1 ))
	elif [ $die -eq 5 ]
	then
		dict["count5"]=$(( ${dict["count5"]}+1 ))
	elif [ $die -eq 6 ]
	then
		dict["count6"]=$(( ${dict["count6"]}+1 ))
	fi

	if [[ ${dict[count$die]} -eq $limit ]]
	then
		max=num$die
	fi
done

for key in "${!dict[@]}"
do
	echo "$key: ${dict[$key]}"
done

min=10
for key in "${!dict[@]}"
do
	if [[ ${dict[$key]} -lt $min ]]
	then
		min="${dict[$key]}"
		minkey=$key
	fi
done

echo "The number that reached miniumu times: $minkey with count -$min "
echo "The number that reached maximum times: $max with count -$limit "
