#!/bin/bash

echo "#################################################################"
echo "##                                                             ##"
echo "##  Setup of the tools for electronics dev                     ##"
echo "##                                                             ##"
echo "#################################################################"

echo "Getting some software from the central repo"
sudo apt install gerbv --yes

echo "Getting some more Git repos"
#Sparkfun libs very useful
git clone https://github.com/sparkfun/SparkFun-Eagle-Libraries.git ~/Git/SparkFun-Eagle-Libraries
git clone https://github.com/sparkfun/SparkFun-KiCad-Libraries.git ~/Git/SparkFun-KiCad-Libraries


#udev rules -> https://github.com/mikeryan/ems-flasher/tree/master
echo "Creating UDEV rules for the Gameboy Flash cartrigde"
echo 'SUBSYSTEMS=="usb", ATTRS{idVendor}=="4670", ATTRS{idProduct}=="9394", GROUP="plugdev", MODE="0666"' | sudo tee /etc/udev/rules.d/51-gameboy-flashcart.rules && sudo udevadm trigger



#now go "Do nothing" mode
echo "#################################################################"
echo "##                                                             ##"
echo "##  Entering do nothing mode                                   ##"
echo "##  Fundamentals are installed, but you have some manual work, ##"
echo "##  future me. Just do as it says.                             ##"
echo "##                                                             ##"
echo "#################################################################"

read -n1 -s -r -p $'Press any key to continue...\n' key

echo "Download the KiCad installer from https://kicad.org/download/ubuntu/"
echo "and install it with 'sudo dpkg -i <installer>'"
echo "**or**"
echo "Install Eagle (find the installer in my backups)"

read -n1 -s -r -p $'Press any key to continue...\n' key


read -n1 -s -r -p $'Press any key to continue...\n' key
