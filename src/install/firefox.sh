#!/bin/bash

echo Testing sudo
sudo echo OK

echo
echo Installing firefox
echo

sudo apt -y update
sudo apt remove -y firefox*
sudo apt -y update
sudo apt install -y firefox*
