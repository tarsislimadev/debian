#!/bin/bash

echo Testing sudo
sudo echo OK

echo
echo Installing Gradle
sudo apt -y update
FILENAME="gradle-8.11.1-bin.zip"
curl -sSL 'https://services.gradle.org/distributions/${FILENAME}' --output "${FILENAME}"
mkdir -p ~/.gradle
unzip -d ~/.gradle "${FILENAME}"
rm -rf "${FILENAME}"
