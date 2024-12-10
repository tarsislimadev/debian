#!/bin/bash

echo Testing sudo
sudo echo OK

echo
echo Installing Printer Drivers
echo
sudo apt -y install printer-driver-brlaser
sudo apt -y install printer-driver-c2esp
sudo apt -y install printer-driver-foo2zjs-common
sudo apt -y install printer-driver-foo2zjs
sudo apt -y install printer-driver-gutenprint
sudo apt -y install printer-driver-hpcups
sudo apt -y install printer-driver-m2300w
sudo apt -y install printer-driver-min12xxw
sudo apt -y install printer-driver-pnm2ppa
sudo apt -y install printer-driver-postscript-hp
sudo apt -y install printer-driver-ptouch
sudo apt -y install printer-driver-pxljr
sudo apt -y install printer-driver-splix
sudo apt -y install printer-driver-sag-gdi
echo
