#!/bin/bash -x

read -p "Enter a number : " num
reverse=0
temp=$num
function checkPalindrome()
{
        while [ $num -ne 0 ]
        do
                remainder=$(($num%10))
                reverse=$((($reverse*10)+$remainder))
                num=$(($num/10))
        done
        if [ $temp -eq $reverse ]
        then
                echo "$temp is palindrome"
        else
                echo "$temp is not a palindrome"
        fi
}
checkPalindrome $num
