#!/bin/bash

echo Testing sudo
sudo echo OK

echo
echo Install libnotify
echo
sudo apt update -y
sudo apt install -y libnotify-bin

