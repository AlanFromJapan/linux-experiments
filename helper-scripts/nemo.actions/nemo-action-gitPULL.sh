#!/bin/bash

LOGFILE=/tmp/nemo-action-gitPULL.log

echo $LOGFILE

echo "---------------------------------------------" >> $LOGFILE
echo `date` >> $LOGFILE
echo "git -C $1 pull" >> $LOGFILE

git -C $1 pull  >> $LOGFILE 2>&1



