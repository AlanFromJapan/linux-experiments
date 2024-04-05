#!/bin/bash

LOGFILE=/tmp/nemo-action-push2localZMQ.log

echo $LOGFILE

echo "---------------------------------------------" >> $LOGFILE
echo `date` >> $LOGFILE

zqmGit="~/Git/zeromq-simplestorage"
cmd="$zqmGit/bin/python -u $zqmGit/src/client/test-client-store.py $1"
echo $cmd >> $LOGFILE

eval $cmd  >> $LOGFILE 2>&1



