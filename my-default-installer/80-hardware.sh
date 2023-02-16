#!/bin/bash

#now go "Do nothing" mode
echo "#################################################################"
echo "##                                                             ##"
echo "##  Entering do nothing mode                                   ##"
echo "##  Fundamentals are installed, but you have some manual work, ##"
echo "##  future me. Just do as it says.                             ##"
echo "##                                                             ##"
echo "#################################################################"

echo "CANON PRINTER: download the drivers and install -> https://cweb.canon.jp/drv-upd/lasershot/linux/lipslxlinux.html"

read -n1 -s -r -p $'Press any key to continue...\n' key






echo "BUFFALO NAS: 1) need some more settings since Ubuntu 20.04 -> see https://www.logikalsolutions.com/wordpress/information-technology/make-ubuntu-work-with-your-network-drives/"

sudo apt install samba-common samba-common-bin samba-dsdb-modules samba-libs --yes

echo "2) Now you need to edit your /etc/samba/smb.conf and add 'client min protocol = NT1' somewhere. Do it."

read -n1 -s -r -p $'Press any key to continue...\n' key

echo "3) Reboot, now it should work "

read -n1 -s -r -p $'Press any key to continue...\n' key





echo "Finished!"
