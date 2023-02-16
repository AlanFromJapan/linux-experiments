#!/bin/bash

#alias als && echo "Alias already registered : skipping." || cat my-cmd-aliases >> ~/.bashrc

sudo apt install emacs-nox git --yes

#basics
sudo apt install python3 python3-venv python3-pip --yes

sudo apt install keepassxc htop timeshift s3fs --yes

#now go "Do nothing" mode
echo "#################################################################"
echo "##                                                             ##"
echo "##  Entering do nothing mode                                   ##"
echo "##  Fundamentals are installed, but you have some manual work, ##"
echo "##  future me. Just do as it says.                             ##"
echo "##                                                             ##"
echo "#################################################################"

echo "1) Log into your emails"

read -n1 -s -r -p $'Press any key to continue...\n' key

echo "2) Get a copy of a keepass DB (old is enough)"

read -n1 -s -r -p $'Press any key to continue...\n' key

echo "3) making folders for ownCloud..."
mkdir -p ~/OwnCloud
mkdir -p ~/AppImage

echo "4) Install ownCloud client and setup -> https://owncloud.com/desktop-app/"

read -n1 -s -r -p $'Press any key to continue...\n' key
echo "PS: you got the appimage? Make that startup script."

echo "5) Now while ownCloud syncs, log into your Firefox account"

read -n1 -s -r -p $'Press any key to continue...\n' key

echo "That's it! Now run the other scripts and go get a coffee."



