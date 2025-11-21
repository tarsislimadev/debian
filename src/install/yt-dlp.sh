#!/bin/bash

echo Testing sudo
sudo echo OK

echo
echo Installing Youtube Download
echo
sudo apt -y update
sudo apt -y install python3-pip ffmpeg
sudo python3 -m pip install --force-reinstall 'https://github.com/yt-dlp/yt-dlp/archive/master.tar.gz' --break-system-packages
