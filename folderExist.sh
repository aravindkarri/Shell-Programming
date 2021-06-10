#!/bin/bash -x

echo "Enter a folder name:"
read Name

if [ -d $Name ]
then
	echo "Folder already exists"
else
	mkdir $Name
fi
