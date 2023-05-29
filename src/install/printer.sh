#!/bin/bash

echo Testing sudo
sudo echo OK

echo
echo Installing Printer Drivers
echo
sudo apt install -y printer-driver-brlaser
sudo apt install -y printer-driver-c2esp
sudo apt install -y printer-driver-foo2zjs-common
sudo apt install -y printer-driver-foo2zjs
sudo apt install -y printer-driver-gutenprint
sudo apt install -y printer-driver-hpcups
sudo apt install -y printer-driver-m2300w
sudo apt install -y printer-driver-min12xxw
sudo apt install -y printer-driver-pnm2ppa
sudo apt install -y printer-driver-postscript-hp
sudo apt install -y printer-driver-ptouch
sudo apt install -y printer-driver-pxljr
sudo apt install -y printer-driver-splix
sudo apt install -y printer-driver-sag-gdi
echo
