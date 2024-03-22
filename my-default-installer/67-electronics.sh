#!/bin/bash

echo "#################################################################"
echo "##                                                             ##"
echo "##  Setup of the tools for electronics dev                     ##"
echo "##                                                             ##"
echo "#################################################################"

sudo apt install gerbv --yes

#Sparkfun libs very useful
git clone https://github.com/sparkfun/SparkFun-Eagle-Libraries.git ~/Git/SparkFun-Eagle-Libraries
git clone https://github.com/sparkfun/SparkFun-KiCad-Libraries.git ~/Git/SparkFun-KiCad-Libraries


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
