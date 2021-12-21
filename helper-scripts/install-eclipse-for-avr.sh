#!/bin/bash

# how to do I explained here: http://electrogeek.tokyo/setup%20avr%20on%20linux.html

echo "Install Eclipse for AVR development (but first download 'Eclipse for C/C++ dev'"

if [[ $# -lt 1 ]]; then
    echo "Illegal number of parameters" >&2
    echo "Usage: $0 <path to eclipse tgz file>"
    exit 2
fi

TARGET_FOLDER=/usr/local/dev/
ECLIPSE_FOLDER=$TARGET_FOLDER/eclise4avr/

#make the target folders
if test -d "$TARGET_FOLDER"; then
    echo "Folder $TARGET_FOLDER exists : I hope you have write permission."
else
    echo "Folder $TARGET_FOLDER DOESN'T exists : creating (need sudo permission)."
    
    sudo mkdir -p $TARGET_FOLDER
    sudo chgrp `whoami` $TARGET_FOLDER
    sudo chown `whoami` $TARGET_FOLDER
    sudo chmod u+rwx $TARGET_FOLDER
    sudo chmod g+rx $TARGET_FOLDER    
fi

#should fail in case you run twice
mkdir $ECLIPSE_FOLDER
tar -xvf $1 -C $ECLIPSE_FOLDER 

