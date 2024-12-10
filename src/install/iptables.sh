#!/bin/bash

echo Testing sudo
sudo echo OK

echo
echo Removing ufw
echo
sudo apt purge ufw

echo
echo Installing iptables
echo
sudo apt -y update
sudo apt -y install iptables
