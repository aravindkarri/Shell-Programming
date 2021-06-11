#!/bin/bash -x

declare -a Fruits
Fruits[0]="Apple"
Fruits[1]="10"
Fruits[2]="Banana"
Fruits[3]="Orange"
Fruits=["Apple","10","Banana","Orange"]
# print all elements of an array
echo ${Fruits[@]}

# print particular value of an array
echo ${Fruits[1]}

# print count of an element of an array
echo ${#Fruits[@]}

#print indexes of an array
echo ${!Fruits[@]}

#Iterating values of an array
for value in ${Fruits[@]}
do
	echo $value
done

# to print index=value
for index in ${!Fruits[@]}
do
	echo $index=${Fruits[$index]}
done

