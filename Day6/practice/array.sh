#!/bin/bash -x

count=0
Fruits[((count++))]="Apple"
Fruits[((count++))]="Orange"
Fruits[((count++))]="Beetroot"

echo ${Fruits[@]}
echo ${!Fruits[@]}
