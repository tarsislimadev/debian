#!/bin/bash

echo Testing sudo
sudo echo OK

echo
echo Installing Blender
echo
sudo apt update
sudo apt install -y python3-pip
sudo python3 -m pip install --force-reinstall 'https://github.com/yt-dlp/yt-dlp/archive/master.tar.gz'
sudo apt install -y blender

echo
echo Blender version
echo
blender --version
echo
echo
