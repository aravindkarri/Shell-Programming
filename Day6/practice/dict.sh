#!/bin/bash -x

declare -A sounds
sounds[dog]="bark"
sounds[cow]="moo"
sounds[bird]="tweet"
sounds[wolf]="howl"

echo "Dog sound" ${sounds[dog]}
echo "Animal sounds" ${sounds[@]}
echo " All animals"${!sounds[@]}
