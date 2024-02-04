#!/bin/bash

echo Testing sudo
sudo echo OK

echo
echo Installing Bluez
echo
sudo apt -y update
sudo apt install -y gnome-bluetooth
sudo apt install -y bluedevil
sudo apt install -y bluez
sudo apt install -y bluez-cups
sudo apt install -y bluez-obexd
