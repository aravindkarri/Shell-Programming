#!/bin/bash -x

betAmount=100
limit=200
won=0
totalBets=0
while [[ $betAmount -ne $limit && $betAmount -ne 0 ]]
do
        randomNum=$((RANDOM%2))
        ((totalBets++))
        if [ $randomNum -eq 1 ]
        then
                ((betAmount++))
                ((won++))
        else
                ((betAmount--))
        fi
done
echo "Amount he has presently: " $betAmount
echo "Number of bets gamble made are : " $totalBets
echo "Number of time he won the bets : " $won
