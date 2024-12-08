#!/bin/bash

echo Testing sudo
sudo echo OK

echo
echo Installing Raspberry Pi Imager
echo
FILENAME="imager_latest_amd64.deb"
curl -O "https://downloads.raspberrypi.org/imager/${FILENAME}"
sudo apt -y install "${FILENAME}"
sudo apt -y install rpi-imager

echo
echo Downloading Raspberry Pi Desktop OS
echo
curl -O 'http://www.cdimage.ubuntu.com/ubuntu/releases/22.04/release/ubuntu-22.04.1-preinstalled-server-armhf+raspi.img.xz'
