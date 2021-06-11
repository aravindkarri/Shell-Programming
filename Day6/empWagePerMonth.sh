#!/bin/bash

isFullTime=1;
isPartTime=2;
empRatePerHrs=20;
numOfWorkingDays=20;

for ((day=1;day<=$numOfWorkingDays;day++))
do
	randomCheck=$((RANDOM%3))
	case $randomCheck in
		$isFullTime)
		empHrs=8
		;;
		$isPartTime)
		empHrs=4
		;;
		*)
		empHrs=0
		;;
	esac
	salary=$(( $empRatePerHrs*$empHrs ));
	echo "Per day salary:" $salary
	totalSalary=$(($totalSalary+$salary))
done
echo "Employee Wage per month:" $totalSalary
