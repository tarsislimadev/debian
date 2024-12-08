#!/bin/bash

echo Testing sudo
sudo echo OK

echo
echo Installing numpy
echo
sudo apt -y update
sudo apt -y install python3-pip
sudo python3 -m pip install numpy
