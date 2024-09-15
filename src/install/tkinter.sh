#!/bin/bash

echo Testing sudo
sudo echo OK

echo
echo Installing Tkinter
echo
sudo apt -y update
sudo apt -y install python-tk python3-pip
echo
