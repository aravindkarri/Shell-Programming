#!/bin/bash -x

read -p "please enter a number like 1,10,100,1000,etc: " num

case $num in
	1)
		echo "Unit"
		;;
	10)
		echo "Ten"
		;;
	100)
	        echo "Hundred"
		;;
	1000)
	        echo "Thousand"
		;;
	10000)
	        echo "Tenthousand"
		;;
	100000)
	        echo "One lakh"
		;;
	1000000)
	        echo "One million"
		;;
	10000000)
		echo "One crore"
		;;
	*)
		echo " Enter correct number"
esac
