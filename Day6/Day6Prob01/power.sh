#!/bin/bash -x

read -p "Enter a number: " n

for ((i=0;i<=n;i++))
do
        var=$((2**i))
        echo " 2 power $i = " $var

done
