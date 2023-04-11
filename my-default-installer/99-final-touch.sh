#!/bin/bash

#now go "Do nothing" mode
echo "#################################################################"
echo "##                                                             ##"
echo "##  Entering do nothing mode                                   ##"
echo "##  Fundamentals are installed, but you have some manual work, ##"
echo "##  future me. Just do as it says.                             ##"
echo "##                                                             ##"
echo "#################################################################"

echo "Install Ghostery or you favorite addblocker on Firefox"

read -n1 -s -r -p $'Press any key to continue...\n' key





#https://askubuntu.com/questions/1043337/is-there-to-make-the-login-screen-appear-on-the-external-display-in-18-04
echo "Configure your displays the way you want (primary, left/right etc) and then save it to GDM user so boot uses the right PRIMARY SCREEN"

echo "Run this command manually once you're done:"
echo "sudo cp ~/.config/monitors.xml ~gdm/.config/monitors.xml; sudo chown gdm:gdm ~gdm/.config/monitors.xml"

read -n1 -s -r -p $'Press any key to continue...\n' key




echo "Finished!"