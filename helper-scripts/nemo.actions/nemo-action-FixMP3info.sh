#!/bin/bash

echo "Starting FixMP3info script in folder '$1'..."
read -n1 -s -r -p $'Ready to start?\n' key

/home/alan/Git/japanese_filename_fixer/bin/python /home/alan/Git/japanese_filename_fixer/fix_mp3_mojibake.py -v "$1"

read -n1 -s -r -p $'Press any key to continue...\n' key