#!/bin/bash

echo Testing sudo
sudo echo OK

echo
echo Installing Unity Hub
echo
sudo apt -y update
sudo sh -c 'echo "deb https://hub.unity3d.com/linux/repos/deb stable main" > /etc/apt/sources.list.d/unityhub.list'
wget -qO - https://hub.unity3d.com/linux/keys/public | sudo apt-key add -
sudo apt -y update
sudo apt -y install unityhub
