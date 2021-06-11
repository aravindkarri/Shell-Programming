#!/bin/bash -x

headVal=1
headCount=0
tailCount=0
while [[ $headCount -lt 11 && $tailCount -lt 11 ]]
do
        randomNum=$((RANDOM%2))
        if [ $randomNum -eq $headVal ]
        then
                ((headCount++))
        else
                ((tailCount++))
        fi
done

if [ $headCount -eq 11 ]
then
        echo "Head Wins"
else
        echo "Tail Wins"
fi

