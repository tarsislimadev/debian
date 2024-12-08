#!/bin/bash

echo Testing sudo
sudo echo OK

echo
echo Removing older Flutter
echo

echo
echo Installing Flutter
echo
sudo apt -y update
wget 'https://storage.googleapis.com/flutter_infra_release/releases/stable/linux/flutter_linux_3.3.10-stable.tar.xz'
tar -xf 'flutter_linux_3.3.10-stable.tar.xz'
mv flutter/ $HOME/.flutter/

echo
echo Setting up Flutter
echo
echo "declare -x PATH=$PATH:$HOME/.flutter/bin " >> $HOME/.bashrc

echo
echo
echo Flutter version
echo
flutter --version
