#!/bin/bash -x

isFullTime=1
isPartTime=2

empCheck=$((RANDOM%3))

if [ $isFullTime -eq $empCheck ]
then
	echo "Fulltime Employee"
elif [ $isPartTime -eq $empCheck ]
then
	echo "PartTime Employee"
else
	echo "Employee is absent"
fi
