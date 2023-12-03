#!/bin/bash

echo "#################################################################"
echo "##                                                             ##"
echo "##  Setup of the TL866II EEPROM writer/reader                  ##"
echo "##                                                             ##"
echo "##  Proceed?                                                   ##"
echo "##                                                             ##"
echo "#################################################################"

read -n1 -s -r -p $'Press any key to continue...\n' key


echo "Installing wine"
sudo apt install wine32 wine64 --yes

echo "#################################################################"
#udev rules -> https://spun.io/2018/07/04/using-the-xgecu-tl866ii-plus-under-linux-with-wine/
echo "Creating UDEV rules for the TL866II EEPROM writer/reader"
sudo echo 'SUBSYSTEMS=="usb", ATTRS{idVendor}=="a466", ATTRS{idProduct}=="0a53", GROUP="plugdev", MODE="0666"' > /etc/udev/rules.d/51-minipro-TL866ii.rules && sudo udevadm trigger

#now go "Do nothing" mode
echo "#################################################################"
echo "##                                                             ##"
echo "##  Entering do nothing mode                                   ##"
echo "##  Fundamentals are installed, but you have some manual work, ##"
echo "##  future me. Just do as it says.                             ##"
echo "##                                                             ##"
echo "#################################################################"

read -n1 -s -r -p $'Press any key to continue...\n' key

echo "Download the TL866II software from one of the below links:"
echo " -> http://forums.xgecu.com/viewthread.php?tid=20&page=1&extra=#pid23"
echo " -> http://www.autoelectric.cn/EN/download.html"
echo "(I have a copy of the software in my backups)"
echo "Extract the rar (!) file and run the setup.exe with wine"

read -n1 -s -r -p $'Press any key to continue...\n' key
echo "#################################################################"

echo "Download the setupapi.dll and store it in the app folder"
echo "link -> https://github.com/radiomanV/TL866/blob/master/wine/TL866II/setupapi.dll?raw=true"

read -n1 -s -r -p $'Press any key to continue...\n' key
echo "#################################################################"

echo "Finished"

