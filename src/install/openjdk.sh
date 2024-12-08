#!/bin/bash

echo Testing sudo
sudo echo OK

echo
echo Install OpenJDK
echo
sudo apt -y update
sudo apt install -y $( apt search openjdk | grep jre-headless | head -n -1 - | cut -d / -f 1 )
echo
