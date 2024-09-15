#!/bin/bash

echo Testing sudo
sudo echo OK

echo
echo Install libnotify
echo
sudo apt -y update
sudo apt -y install libnotify-bin

