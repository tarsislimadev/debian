#!/bin/bash

echo Testing sudo
sudo echo OK

FILENAME=gradle-7.3.3-bin.zip

echo
echo Installing Gradle
sudo apt update -y
curl -sSL 'https://services.gradle.org/distributions/${FILENAME}' --output $FILENAME
mkdir -p ~/.gradle
unzip -d ~/.gradle $FILENAME
rm -rf $FILENAME

