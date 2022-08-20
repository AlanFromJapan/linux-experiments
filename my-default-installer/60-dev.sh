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



