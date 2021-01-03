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
echo Removing CUPS
echo
sudo apt remove --purge cups cups-client cups-filters cups-ppdc cups-backend-bjnp cups-common cups-filters-core-drivers cups-server-common cups-browsed cups-core-drivers cups-ipp-utils cups-tea4cups cups-bsd cups-daemon cups-x2go 

echo
echo Removing no longer required packages
echo
sudo apt-get -y autoremove
