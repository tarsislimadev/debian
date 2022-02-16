#!/bin/bash

echo Testing sudo
sudo echo OK

echo 
echo Installing OBS
echo 
sudo add-apt-repository ppa:obsproject/obs-studio
sudo apt update
sudo apt install -y ffmpeg obs-studio

echo
echo OBS OK
echo 
