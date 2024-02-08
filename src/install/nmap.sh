#!/bin/bash

echo Testing sudo
sudo echo OK

echo
echo Installing nmap
echo
sudo apt-get -y update
sudo apt-get -y install nmap
echo
