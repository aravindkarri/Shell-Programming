#!/bin/bash -x

function sampleFunc()
{
	echo $1
}
result="$( sampleFunc $((RANDOM%2)))"

if [ $result -eq 1 ]
then
	echo "Employee is present"
else
	echo "Employee is absent"
fi
