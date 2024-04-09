#!/bin/bash
#---------------------------------
# Converts a full folder AND SUBFOLDERS of .wma to .mp3.
# Requires ffmpeg
#

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
		ffmpeg -i "$f" -q:a 0 -map a "${f[@]/%wma/mp3}"
		#delete the original file if the conversion was successful only
		[ $status -eq 0 ] && rm -f $f
		echo "==================================================================================="
	fi
done
