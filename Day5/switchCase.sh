#!/bin/bash -x

for fileName in $(ls)
do
	ext=${fileName##*\.}
	case $ext in

		java)
			echo "$fileName: java file"
			;;
		sh)
			echo "$fileName: shell file"
			;;
		*)
			echo "$fileName: not processed"
			;;
	esac
done
