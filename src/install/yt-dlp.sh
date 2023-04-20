#!/bin/bash

echo Testing sudo
sudo echo OK

echo
echo Installing YT DLP
echo
sudo apt update -y
sudo apt install -y python3-pip ffmpeg
sudo python3 -m pip install --force-reinstall 'https://github.com/yt-dlp/yt-dlp/archive/master.tar.gz'
