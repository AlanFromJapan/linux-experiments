#!/bin/bash

# Download from here https://www.veracrypt.fr/en/Downloads.html
# Install with "sudo apt-get install ./the-deb-file.deb"

echo "DISMount a veracrypt file currently mounted (runs as sudoer)"

if [[ $# -ne 1 ]]; then
    echo "Illegal number of parameters" >&2
    echo "Usage: $0 <path to mountpoint>"
    exit 2
fi

#This one works if you have the CONSOLE version
#sudo veracrypt  --dismount --non-interactive $1

#This one works if you have the GUI version
sudo veracrypt --text --dismount --non-interactive $1

