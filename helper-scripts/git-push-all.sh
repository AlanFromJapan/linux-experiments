#!/bin/bash
#---------------------------------
# Do a git push on all sub directories

RED='\033[0;31m'
NC='\033[0m' # No Color
CYAN='\033[0;36m'

echo -e "${CYAN}############################################################################################################## "
echo GIT PUSH updating all sub-folders
echo -e "##############################################################################################################$NC"
for d in ./*/ ;
do
	#directories only
	if [ -d "$d" ]; then
		cd $d
		
		echo -e "GIT PUSH ${RED}`pwd`$NC ..."
		git push
		echo ""
		
		cd ..
	fi
done

echo -e "$CYAN ... completed! $NC"

