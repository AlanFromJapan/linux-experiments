#!/bin/bash

echo "Adds the necessary Eclipse/C/AVR files to an ATmel project folder"

if [[ $# -lt 1 ]]; then
    echo "Illegal number of parameters" >&2
    echo "Usage: $0 <path to project folder>"
    exit 2
fi

cp eclipse-avr-project-maker.assets/.project $1
cp eclipse-avr-project-maker.assets/.cproject $1
cp -R eclipse-avr-project-maker.assets/.settings $1

PROJECT_FOLDER=`basename $1`

sed -i "s/__PROJECT_NAME__/$PROJECT_FOLDER/" $1/.project
sed -i "s/__PROJECT_NAME__/$PROJECT_FOLDER/" $1/.cproject

echo "Files installed in the folder $1 and settings updated as a project named $PROJECT_FOLDER."
echo "** README: the config are for a ATtiny2313 at 12MHz by default, so don't forget to change it in the interface or the .settings/...prefs file. **"

