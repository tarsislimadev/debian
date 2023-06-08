#!/bin/bash

echo Testing sudo
sudo echo OK

echo
echo Installing Authy
echo
sudo apt update -y
sudo apt install -y snapd
sudo snap install authy

echo
echo Version of Authy
echo
authy --version

