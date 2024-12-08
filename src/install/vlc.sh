#!/bin/bash

echo Testing sudo
sudo echo OK

echo
echo Install OBS and VLC
echo
sudo add-apt-repository -y ppa:obsproject/obs-studio
sudo apt -y update
sudo apt -y install vlc
