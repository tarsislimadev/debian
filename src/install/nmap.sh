#!/bin/bash

echo Testing sudo
sudo echo OK

echo
echo Installing nmap
echo
sudo apt -y update
sudo apt -y install nmap
echo
