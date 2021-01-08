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
echo Removing no longer required packages
echo
sudo apt-get -y autoremove
