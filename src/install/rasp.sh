#!/bin/bash

echo Testing sudo
sudo echo OK

echo
echo Installing Raspberry Pi Imager
echo
wget 'https://downloads.raspberrypi.org/imager/imager_latest_amd64.deb'
sudo apt -y install ./imager_latest_amd64.deb
sudo apt -y install rpi-imager

echo
echo Downloading Raspberry Pi Desktop OS
echo
wget http://www.cdimage.ubuntu.com/ubuntu/releases/22.04/release/ubuntu-22.04.1-preinstalled-server-armhf+raspi.img.xz

