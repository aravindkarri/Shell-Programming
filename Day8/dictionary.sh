#!/bin/bash -x

declare -A person
person[name]="Aravind"
person[city]="Vizag"
person[state]="Andhrapradesh"
person[age]=21


echo ${person[@]}
echo ${person[state]}
echo ${#person[@]}
echo ${!person[@]}

for key in ${!person[@]}
do
	echo $key=${person[$key]}
done
