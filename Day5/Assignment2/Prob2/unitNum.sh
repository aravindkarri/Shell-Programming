#!/bin/bash -x

read -p "Enter a number:" num

if [ $num -eq 1 ]
then
	echo "Unit"
elif [ $num -eq 10 ]
then
	echo "Ten"
elif [ $num -eq 100 ]
then
        echo "Hundred"
elif [ $num -eq 1000 ]
then
        echo "Thousand"
elif [ $num -eq 10000 ]
then
        echo "Tenthousand"
elif [ $num -eq 100000 ]
then
        echo "One lakh"
elif [ $num -eq 1000000 ]
then
        echo "One million"
elif [ $num -eq 10000000 ]
then
        echo "One crore"
elif [ $num -eq 100000000 ]
then
        echo "Ten Crores"
elif [ $num -eq 1000000000 ]
then
        echo "Hundred Crores"
else
	echo "Enter correct number"
fi
