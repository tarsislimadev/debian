#!/bin/bash

echo Testing sudo
sudo echo OK
echo

echo
echo Installing Dart
echo
sudo apt -y update
FILENAME="dart_3.6.0-1_amd64.deb"
curl -sSLO "https://storage.googleapis.com/dart-archive/channels/stable/release/latest/linux_packages/${FILENAME}"
sudo dpkg -i "${FILENAME}"
rm -rf "${FILENAME}"
dart --version
