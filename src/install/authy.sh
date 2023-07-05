#!/bin/bash

echo Testing sudo
sudo echo OK

echo
echo Installing Authy
echo
sudo apt -y update
sudo apt -y install snapd
sudo snap install authy

echo
echo Version of Authy
echo
authy --version

