#!/bin/bash -x

diceOne=$((RANDOM%6+1))
diceTwo=$((RANDOM%6+1))
res=$(($diceOne + $diceTwo))
echo $res
