#!/bin/bash

#install Lutris to play MtG:Arena
# https://lutris.net/downloads

if [[ `apt list --installed wine 2>/dev/null  | wc -l` -lt 2 ]]; then
    echo "You should have installed WINE before, did you do it? It is normally in the basics, but in case you should stop NOW if not installed."
    read -rsp $'Press enter to continue...\n'
fi

echo "install!"
sudo add-apt-repository ppa:lutris-team/lutris
sudo apt update
sudo apt install lutris

