#!/bin/bash

echo Testing sudo
sudo echo OK

echo
echo Installing Tkinter
echo
sudo apt update -y
sudo apt install -y python-tk python3-pip
echo
