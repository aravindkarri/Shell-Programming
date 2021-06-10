#!/bin/bash -x

isPartTime=1
isFullTime=2
totalSalary=0
empRatePerHr=20;
numWorkingDays=30;

for (( day=1; day<=$numWorkingDays; day++ ))
do
	empCheck=$((RANDOM%3));
	case $empCheck in
		$isPartTime)
			empHrs=4
			;;
		$isFullTime)
			empHrs=8
			;;
		*)
			empHrs=0
			;;
	esac
	salary=$(($empRatePerHr * $empHrs ))
	totalSalary=$(($salary + $totalSalary))
done
