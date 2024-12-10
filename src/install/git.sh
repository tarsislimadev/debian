#!/bin/bash

echo Testing sudo
sudo echo OK
echo

echo
echo Installing Git
echo

sudo apt -y update

sudo apt -y install git make

echo
echo Git version
echo

git --version
