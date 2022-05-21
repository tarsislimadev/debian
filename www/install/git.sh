#!/bin/bash

echo Testing sudo
sudo echo OK

echo 
echo Installing Git
echo 
sudo apt update
sudo apt install -y git

echo
echo Git version
echo
git --version
