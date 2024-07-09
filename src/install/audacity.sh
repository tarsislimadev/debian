#!/bin/bash

echo Testing sudo
sudo echo OK

echo
echo Installing Authy
echo
sudo apt -y update
sudo apt install -y audacity

echo
echo Version of Authy
echo
audacity --version
