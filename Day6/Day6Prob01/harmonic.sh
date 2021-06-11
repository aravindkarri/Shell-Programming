#!/bin/bash -x

read -p "Enter a number :" n

nthHarmonicNumber=0

for (( i=1;i<=n;i++ ))
do

	nthHarmonicNumber=`awk 'BEGIN{ printf('$nthHarmonicNumber' + (1/'$i'))}'`
done

echo "Nth harmonic number equals to:" $nthHarmonicNumber

