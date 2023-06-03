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


echo "Set yourself a cool 2 lines bash prompt. Add this to .bashrc:"
echo 'export PS1="╔\[\033[38;5;6m\]\u\[$(tput sgr0)\]@\[$(tput sgr0)\]\[\033[38;5;202m\]\h\[$(tput sgr0)\]-\[$(tput sgr0)\]\[\033[38;5;3m\][\[$(tput sgr0)\]\[\033[38;5;6m\]\w\[$(tput sgr0)\]\[\033[38;5;3m\]]\[$(tput sgr0)\]\n╚═>\[$(tput sgr0)\]\[\033[38;5;14m\]\\$\[$(tput sgr0)\] \[$(tput sgr0)\]"'
read -n1 -s -r -p $'Press any key to continue...\n' key




#https://askubuntu.com/questions/1043337/is-there-to-make-the-login-screen-appear-on-the-external-display-in-18-04
echo "Configure your displays the way you want (primary, left/right etc) and then save it to GDM user so boot uses the right PRIMARY SCREEN"

echo "Run this command manually once you're done:"
echo "sudo cp ~/.config/monitors.xml ~gdm/.config/monitors.xml; sudo chown gdm:gdm ~gdm/.config/monitors.xml"

read -n1 -s -r -p $'Press any key to continue...\n' key




echo "Did your Japanese keyboard works with MOZC but it got turned to a US keyboard layout?"
echo "nano .config/mozc/ibus_config.textproto"
echo "  Replace <layout>default</layout> by <layout>japanese</layout>"
echo "  You can try adding the Japanese keyboard layout as alternate input, maybe helps or just a legend?"
read -n1 -s -r -p $'Press any key to continue...\n' key


echo "Finished!"