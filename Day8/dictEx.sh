#!/bin/bash -x

declare -A dict

read -p "Enter a key: " key
read -p "Enter value of key :" value
dict[$key]="$value"


echo "${!dict[@]}=${dict[@]}"
