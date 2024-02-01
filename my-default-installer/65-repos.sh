#!/bin/bash

mkdir -p ~/Git

#the helper update-all script
here=`dirname $0`

cp $here/git-updateall.sh ~/Git/

#my stuffs
git clone https://github.com/AlanFromJapan/alanarduinotools.git ~/Git/alanarduinotools
git clone https://github.com/AlanFromJapan/alanWebSites.git ~/Git/alanWebSites
git clone https://github.com/AlanFromJapan/Gameboy.git ~/Git/Gameboy
git clone https://github.com/AlanFromJapan/pcb-design.git ~/Git/pcb-design
git clone https://github.com/AlanFromJapan/linux-experiments.git ~/Git/linux-experiments
git clone https://github.com/AlanFromJapan/MTGA-experiments.git ~/Git/MTGA-experiments
git clone https://github.com/AlanFromJapan/ipcampy.git ~/Git/ipcampy
git clone -b master https://github.com/AlanFromJapan/ipcampy.nocv.git ~/Git/ipcampy.nocv
git clone https://github.com/AlanFromJapan/GBReaper.git ~/Git/GBReaper
#git clone https://github.com/AlanFromJapan/terraforming.git ~/Git/terraforming
git clone https://github.com/AlanFromJapan/poke-trainer.git ~/Git/poke-trainer
git clone https://github.com/AlanFromJapan/CodeDeLAvent2022.git ~/Git/CodeDeLAvent2022
git clone https://github.com/AlanFromJapan/gbdk-sprite-exporter.git ~/Git/gbdk-sprite-exporter
git clone https://github.com/AlanFromJapan/GrblWebStreamer.git  ~/Git/GrblWebStreamer
git clone https://github.com/AlanFromJapan/grbl2image.git ~/Git/grbl2image
git clone https://github.com/AlanFromJapan/CodingTrain.CodingChallenge.git ~/Git/CodingTrain.CodingChallenge
git clone https://github.com/AlanFromJapan/dungeon-adventurers.git ~/Git/dungeon-adventurers
git clone https://github.com/AlanFromJapan/GameboyClock.git ~/Git/GameboyClock

#gameboy dev related
git clone https://github.com/andreasjhkarlsson/gbdk-n.git ~/Git/gbdk-n
git clone https://github.com/mikeryan/ems-flasher ~/Git/ems-flasher

#others
git clone https://github.com/stefanhaustein/TerminalImageViewer.git ~/Git/TerminalImageViewer
