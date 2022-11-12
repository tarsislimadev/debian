#!/bin/bash

echo Testing sudo
sudo echo OK

echo
echo Installing Raspberry Pi Imager
echo
wget 'https://downloads.raspberrypi.org/imager/imager_latest_amd64.deb'
sudo apt install -y ./imager_latest_amd64.deb
sudo apt install -y rpi-imager

echo
echo Downloading Raspberry Pi Desktop OS
echo
wget 'https://downloads.raspberrypi.org/raspios_arm64/images/raspios_arm64-2022-09-26/2022-09-22-raspios-bullseye-arm64.img.xz'
wget 'https://downloads.raspberrypi.org/raspios_lite_arm64/images/raspios_lite_arm64-2022-09-26/2022-09-22-raspios-bullseye-arm64-lite.img.xz'


