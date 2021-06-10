#!/bin/bash -x

isPresent=1
empWorkingHrs=8
empRatePerHr=20
randomCheck=$((RANDOM%2))

if [ $isPresent -eq $randomCheck ]
then
	echo "employee is present"
	salary=$(($empWorkingHrs*$empRatePerHr))
else
	echo "employee is absent"
	salary=0
fi
