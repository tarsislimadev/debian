#!/bin/bash

echo Testing sudo
sudo echo OK

echo
echo Removing Samba and VPN
echo
sudo apt-get remove --purge -y *samba* *vpn* 

echo
echo Removing Simple Scan
echo
[[ -e $(which simple-scan) ]] && sudo apt remove --purge -y simple-scan 

echo
echo Removing Printer Drivers
echo
sudo apt remove --purge  printer-driver-brlaser printer-driver-gutenprint printer-driver-pnm2ppa printer-driver-sag-gdi printer-driver-c2esp printer-driver-hpcups printer-driver-postscript-hp printer-driver-splix printer-driver-foo2zjs printer-driver-m2300w printer-driver-ptouch printer-driver-foo2zjs-common printer-driver-min12xxw printer-driver-pxljr 

echo
echo Removing no longer required packages
echo
sudo apt-get -y autoremove
