#!/bin/bash

#my savior: https://superuser.com/questions/775785/how-to-disable-a-keyboard-key-in-linux-ubuntu#775811
#see the x events with this command "xev -event keyboard"
#delete key has keycode 119
xmodmap -e 'keycode 119='
