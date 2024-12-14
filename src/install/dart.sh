#!/bin/bash

echo Testing sudo
sudo echo OK
echo

[[ -z "${DART_VERSION}" ]] && DART_VERSION="3.6.0"

echo
echo Installing Dart
echo
sudo apt -y update
FILENAME="dart_${DART_VERSION}-1_amd64.deb"
curl -sSLO "https://storage.googleapis.com/dart-archive/channels/stable/release/${DART_VERSION}/linux_packages/${FILENAME}"
sudo dpkg -i "${FILENAME}"
rm -rf "${FILENAME}"
dart --version
