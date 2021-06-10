#!/bin/bash -x

function print_msg()
{
	echo "hello $1 $2"
}

read -p "Enter parameter of functions " param
#calling function
print_msg $param Hii
