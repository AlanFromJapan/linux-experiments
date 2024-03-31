#!/bin/bash

LOGFILE=/tmp/nemo-action-gitPUSH.log

echo $LOGFILE

echo "---------------------------------------------" >> $LOGFILE
echo `date` >> $LOGFILE
echo "git -C $1 push" >> $LOGFILE

git -C $1 push  >> $LOGFILE 2>&1



