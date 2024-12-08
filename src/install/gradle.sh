#!/bin/bash

echo Testing sudo
sudo echo OK

echo
echo Installing Gradle
sudo apt -y update
FILENAME="gradle-7.3.3-bin.zip"
curl -sSL 'https://services.gradle.org/distributions/${FILENAME}' --output "${FILENAME}"
mkdir -p ~/.gradle
unzip -d ~/.gradle "${FILENAME}"
rm -rf "${FILENAME}"
