#!/bin/bash

echo Testing sudo
sudo echo OK

echo
echo Installing Bluez
echo
sudo apt -y update
sudo apt -y install gnome-bluetooth
sudo apt -y install bluedevil
sudo apt -y install bluez
sudo apt -y install bluez-cups
sudo apt -y install bluez-obexd
