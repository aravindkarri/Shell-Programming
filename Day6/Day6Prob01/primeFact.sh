#!/bin/bash -x

read -p "Enter a number : " num

for ((i=2;i<=num;i++))
do
        if [ $(($num%$i)) -eq 0 ]
        then
                flag=0
                for ((j=2;j<=$i-1;j++))
                do
                        if [ $[i%j] -eq 0 ]
                        then
                                flag=1
                                break
                        fi
                done
        if [ $flag -eq 0 ]
        then
                echo " Factors of given $num are : " $i
        fi
        fi
done
