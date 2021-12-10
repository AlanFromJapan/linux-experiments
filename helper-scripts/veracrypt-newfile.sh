#!/bin/bash

# Download from here https://www.veracrypt.fr/en/Downloads.html
# Install with "sudo apt-get install ./the-deb-file.deb"

echo "Creates an empty veracrypt file"

PWD_PARAM=""

if [[ $# -lt 2 ]]; then
    echo "Illegal number of parameters" >&2
    echo "Usage: $0 <path to file> <size in MB> [<password>]"
    exit 2
fi

if [[ $# -eq 3 ]]; then
    echo "Password specified on the command line (you are a trusting guy aren't you?). Using non-interactive mode."
    PWD_PARAM="--password=$3 --non-interactive"
else
    echo "No password as parameter: VC will ask you."
    PWD_PARAM=
fi

#This one works if you have the CONSOLE version
#veracrypt --create $1  --hash=sha512 --encryption=Twofish --filesystem=FAT --size=$2M --volume-type=Normal $PWD_PARAM --random-source=/dev/random

#This one works if you have the GUI version
veracrypt --text --create $1 --hash=sha512 --encryption=Twofish --filesystem=FAT --size=$2M --volume-type=Normal $PWD_PARAM --random-source=/dev/random

