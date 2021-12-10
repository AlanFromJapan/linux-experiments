#!/bin/bash

# Download from here https://www.veracrypt.fr/en/Downloads.html
# Install with "sudo apt-get install ./the-deb-file.deb"

echo "Mount a veracrypt file (runs as sudoer)"

if [[ $# -lt 2 ]]; then
    echo "Illegal number of parameters" >&2
    echo "Usage: $0 <path to file> <path to mountpoint> [<password>]"
    exit 2
fi

PWD_PARAM=""

if [[ $# -eq 3 ]]; then
    echo "Password specified on the command line (you are a trusting guy aren't you?). Using non-interactive mode."
    PWD_PARAM="--password=$3 --non-interactive"
else
    echo "No password as parameter: VC will ask you."
    PWD_PARAM=
fi

#This one works if you have the CONSOLE version
#sudo veracrypt $PWD_PARAM $1 $2


#This one works if you have the GUI version
sudo veracrypt --text $PWD_PARAM  $1 $2

