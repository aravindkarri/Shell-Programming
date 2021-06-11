#!/bin/bash -x

read -p "Select any conversion: 1) degC to degF 2) degF to degC: " num

function getDegFahrenheit()
{
        result=`echo | awk '{print ('$Celsius' * (9/5)) + 32}'`
        echo "degF: " $result"°F"
}
function getDegCelsius()
{
        result=`echo - | awk '{print ('$Fahrenheit' - 32) * 5/9}'`
        echo "degC: " $result"°C"
}

case $num in

        1)
                read -p "Enter degC Value b/w 0C to 100C : " Celsius
                getDegFahrenheit $Celsius
                ;;
        2)
                read -p "Enter degF value b/w 32F to 212F : " Fahrenheit
                getDegCelsius $Fahrenheit
                ;;
esac
