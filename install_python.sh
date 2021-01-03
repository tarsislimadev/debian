#!/bin/bash

echo Testing sudo
sudo echo OK
echo 
echo Installing Python 3 and PIP
echo 
sudo apt update
sudo apt install -y python3 python3-pip
sudo apt update
echo 
echo Setting up Docker
echo 
sudo ln -fs /usr/bin/python3 /usr/bin/python
sudo ln -fs /usr/bin/pip3 /usr/bin/pip