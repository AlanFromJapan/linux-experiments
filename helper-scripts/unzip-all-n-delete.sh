#!/bin/bash
#---------------------------------
# Unzips all the files in the folder and rm them

RED='\033[0;31m'
NC='\033[0m' # No Color
CYAN='\033[0;36m'

echo -e "${CYAN}############################################################################################################## "
echo UNZIP all zip files in the current directory
echo -e "##############################################################################################################$NC"

# Unzip all zip files in the current directory
for d in ./*.zip ;
do

    echo -e "${RED}Unzipping $d ... $NC"
    unzip -o "$d"
    rm "$d"
    echo -e "${RED}Done!$NC"

done



echo -e "$CYAN ... completed! $NC"

