#!/bin/bash
#---------------------------------
# Do a git pull on all sub directories

for f in "$1"/*; do
	#directories only
	if [ -d "$f" ]; then
		echo "Updating folder $f ..."
		cd $f
		git pull
		cd ..
	fi
done

