#!/bin/bash

echo Testing sudo
sudo echo OK
echo

echo
echo Install VLC
echo
sudo apt -y update
sudo apt -y install vlc
