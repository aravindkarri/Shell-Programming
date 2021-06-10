#!/bin/bash -x

valid=true
counter=1
while [ $valid ]
do
	echo "$counter"
	if [ $counter -eq 3 ]
	then
		break
	else
		((counter++))
	fi
done
