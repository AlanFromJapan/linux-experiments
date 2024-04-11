#!/bin/bash
#DELETES all the WMA files if there is an MP3 file with the same name that exists in the folder

if [[ $# -lt 1 ]]; then
    echo "Illegal number of parameters" >&2
    echo "Usage: $0 <path to root folder of wma files>"
    exit 2
fi

#trick to handle files with SPACE in names
IFS=$(echo -en "\n\b")

for f in $(find $1 -name *.wma); do
	#files only
	if [ -f "$f" ]; then
		
		mp3=$(echo "$f" | sed "s/.wma/.mp3/")
		#echo $f ">>>>>" $mp3
		
		if [ -e $mp3 ]; then
			echo "bye wma! >>> $f"
			#delete the original file if there is an equivalent mp3
			rm $f
		else
			echo "no mp3 :( >>> $f"
		fi
	fi
done
