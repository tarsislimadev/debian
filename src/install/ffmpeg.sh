#!/bin/bash

echo Testing sudo
sudo echo OK

echo
echo Installing ffmpeg
echo
sudo apt -y update
sudo apt -y install ffmpeg
echo
