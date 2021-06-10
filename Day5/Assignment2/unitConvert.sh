#!/bin/bash -x

Inches=42
res=`awk 'BEGIN{printf("%0.2f",'$Inches' * (1/12))}'`

Feet=2400 #1feet=0.3048meters  2400feet^2
rectangularPlot=`awk 'BEGIN{printf("%0.2f",'$Feet' * (0.3048)^2)}'`

#1squre meter=0.000247105
squareMeters=`awk 'BEGIN{printf("%0.2f",'$rectangularPlot' * 25 )}'`
acres=`awk 'BEGIN{printf("%0.2f",'$squareMeters' * (0.000247105))}'`

echo $res
echo $rectangularPlot
echo $acres
