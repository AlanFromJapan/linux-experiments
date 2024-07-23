#!/bin/bash
#---------------------------------
# Tell you which folder must be pushed

RED='\033[0;31m'
NC='\033[0m' # No Color
CYAN='\033[0;36m'

echo -e "${CYAN}############################################################################################################## "
echo GIT check among all folders which one has changes to be pushed
echo -e "##############################################################################################################$NC"
for d in ./*/ ;
do
	#directories only
	if [ -d "$d" ]; then
		cd $d
		
		# result=`git fetch --dry-run 2>&1`
		# if [ -n "$result" ]; then
		# 	echo -e "GIT: ${RED}`pwd`$NC is not up to date (PULL)..."
		# 	#echo -e "$result"
		# fi

		
		result=`git status --porcelain 2>&1`
		if [ -n "$result" ]; then
			echo -e "GIT: ${CYAN}`pwd`$NC is not up to date (PUSH)..."
			echo -e "$result"
		fi		

		cd ..
	fi
done

echo -e "$CYAN ... completed! $NC"

