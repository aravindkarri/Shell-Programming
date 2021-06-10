#!/bin/bash -x

read -p "Enter your choice: 1)Feet to inches 2)Feet to Meter 3)Inch to Feet 4)Meter to Feet : " n

case $n in
	1)
		read -p "Enter Feet : " feet
		inch=`awk 'BEGIN{printf("%0.3f",'$feet' * 12)}'`
		echo $inch
		;;
	2)
		read -p "Enter Feet : " feet
		meter=`awk 'BEGIN{printf("%0.3f",'$feet' * 0.305)}'`
		echo $meter
		;;
	3)
		read -p "Enter Inch : " inch
		feet=`awk 'BEGIN{printf("%0.2f",'$inch' * (1/12))}'`
		echo $feet

		;;
	4)
		read -p "Enter Meter : " meter
		feet=`awk 'BEGIN{printf("%0.2f",'$meter' * 3.280)}'`
		echo $feet
		;;
	*)
		echo "Choose correct option"
		;;
esac
