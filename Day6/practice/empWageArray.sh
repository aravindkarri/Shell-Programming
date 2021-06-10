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

function getWorkHrs() {
	local empCheck=$1
	case $empCheck in
		$IS_FULL_TIME)
			empHrs=8
			;;
		$IS_PART_TIME)
			empHrs=4
			;;
		*)
			empHrs=0
			;;
	esac
	echo $empHrs

}

function getEmpWage() {
	local empHrs=$1
	echo $(($empHrs*$RATE_PER_HR))
}

while [[ $totalWorkingHrs -lt $MAX_WORKING_HRS && $totalWorkingDays -lt $MAX_WORKING_DAYS ]]
do
	((totalWorkingDays++))
	empCheck=$((RANDOM%3));
	empHrs="$( getWorkHrs $empCheck )"
	dailyWage[$totalWorkingDays]="$( getEmpWage $empHrs )"
	totalWorkingHrs=$(($empHrs + $totalWorkingHrs))
done
totalSalary=$(($totalWorkingHrs * $RATE_PER_HR))
echo "Employee wage per month:" $totalSalary
echo ${dailyWage[@]}
