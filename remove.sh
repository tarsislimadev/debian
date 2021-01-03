#!/bin/bash

echo Testing sudo
sudo echo OK

echo
echo Removing no longer required packages
echo
sudo apt-get -y autoremove
