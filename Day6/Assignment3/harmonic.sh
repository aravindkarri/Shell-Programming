#!/bin/bash -x

read -p "Enter a number : " n

nthHarmonicNum=0
for ((i=1;i<=n;i++))
do
	nthHarmonicNum=`awk 'BEGIN{print('$nthHarmonicNum' + (1/'$i'))}'`
done
echo "nth Harmonic number is: "$nthHarmonicNum
