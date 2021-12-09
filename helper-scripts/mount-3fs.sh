#!/bin/bash

#inspiration from here https://www.nakivo.com/blog/mount-amazon-s3-as-a-drive-how-to-guide/

#will me mounted under your home at that folder
S3LOCAL_MOUNT=Mounted-s3fs
S3MOUNTED_FOLDER=':/MyBackups'


echo "Mount the s3 folder"
echo "***********************************************************************"
echo "** "
echo "** READ ME !!"
echo "** Make sure you have a ~/.password-s3fs file that contains the text 'ACCESS_KEY:SECRET' and that's it's readonly to you"
echo "** "
echo "** It will be mounted in ~/$S3LOCAL_MOUNT"
echo "** It is customized for DigitalOcean Spaces (the s3 clone of DigitalOcean that is API compatible)"
echo "** Btw only that one folder '$S3MOUNTED_FOLDER' (not subfolders) will be mounted."
echo "** "
echo "***********************************************************************"


#make the mounted folder
mkdir -p ~/$S3LOCAL_MOUNT

if mount | grep $S3LOCAL_MOUNT; then
    echo "Already mounted"
else
    echo "Not already mounted: mounting!"
    #no need to be root/sudoer
    s3fs afj$S3MOUNTED_FOLDER ~/$S3LOCAL_MOUNT -o passwd_file=~/.password-s3fs -o host=https://sgp1.digitaloceanspaces.com
fi

