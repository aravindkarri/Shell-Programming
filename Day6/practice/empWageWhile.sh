#!/bin/bash -x

#Constants
IS_FULL_TIME=1
IS_PART_TIME=2
RATE_PER_HR=20
MAX_WORKING_DAYS=2
MAX_WORKING_HRS=10;

#Variables
totalWorkingDays=0
totalWorkingHrs=0;
salary=0;

while [[ $totalWorkingHrs -lt $MAX_WORKING_HRS && $totalWorkingDays -lt $MAX_WORKING_DAYS ]]
do
	((totalWorkingDays++))
	empCheck=$((RANDOM%3));
	case $empCheck in
		$IS_PART_TIME)
			empHrs=4
			;;
		$IS_FULL_TIME)
			empHrs=8
			;;
		*)
			empHrs=0
			;;
	esac
	totalWorkingHrs=$(($empHrs + $totalWorkingHrs))
done
totalSalary=$(($totalWorkingHrs * $RATE_PER_HR))
echo "Employee wage per month:" $totalSalary
