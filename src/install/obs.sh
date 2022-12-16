#!/bin/bash

echo Testing sudo
sudo echo OK

echo
echo Install OBS and VLC
echo
sudo add-apt-repository ppa:obsproject/obs-studio
sudo apt update -y
sudo apt install -y ffmpeg obs-studio vlc
