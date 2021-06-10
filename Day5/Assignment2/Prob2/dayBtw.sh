#!/bin/bash -x

read -p "Enter a month: " x
read -p "Enter a day : " y

firstDate=0320
secondDate=0620
BetweenDate=$x$y
a="$(date -d "${firstDate}" +"%s")"
b="$(date -d "${secondDate}" +"%s")"
c="$(date -d "${BetweenDate}" +"%s")"

if [ $c -gt $a ] && [ $c -lt $b ]
then
	echo "True"
else
	echo "False"
fi
