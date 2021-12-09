#!/bin/bash

# Download from here https://www.veracrypt.fr/en/Downloads.html
# Install with "sudo apt-get install ./the-deb-file.deb"

echo "Creates an empty veracrypt file"

if [[ $# -ne 3 ]]; then
    echo "Illegal number of parameters" >&2
    echo "Usage: $0 <path to file> <size in MB> <password>"
    exit 2
fi

#This one works if you have the CONSOLE version
#veracrypt --create $1 --password=$3 --hash=sha512 --encryption=Twofish --filesystem=FAT --size=$2M --volume-type=Normal --non-interactive --random-source=/dev/random

#This one works if you have the GUI version
veracrypt --text --create $1 --password=$3 --hash=sha512 --encryption=Twofish --filesystem=FAT --size=$2M --volume-type=Normal --non-interactive --random-source=/dev/random

