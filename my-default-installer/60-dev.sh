#!/bin/bash

#basics
sudo apt install python3 python3-venv python3-pip gcc sqlitebrowser --yes

#pico pi
sudo pip3 install rshell
#add self to the serial port users
sudo usermod -a -G dialout $USER


#AVR related
sudo apt install  gcc-avr binutils binutils-avr avrdude avr-libc gdb-avr  --yes

#GB dev related
sudo apt install  sdcc visualboyadvance --yes
#For the 64MB card "ems-flasher"
sudo apt install  pkg-config libusb-1.0-0-dev --yes


#now go "Do nothing" mode
echo "#################################################################"
echo "##                                                             ##"
echo "##  Entering do nothing mode                                   ##"
echo "##  Fundamentals are installed, but you have some manual work, ##"
echo "##  future me. Just do as it says.                             ##"
echo "##                                                             ##"
echo "#################################################################"

echo "1) Get latest VS.code -> https://code.visualstudio.com/"

read -n1 -s -r -p $'Press any key to continue...\n' key

echo "2) Configure git to save your github credentials"
echo "git config --global user.email \"you@example.com\" "
echo "git config --global user.name \"Your Name\" "
echo "git config --global credential.helper store"

read -n1 -s -r -p $'Press any key to continue...\n' key

