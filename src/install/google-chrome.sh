#!/bin/bash

FILENAME="google-chrome-stable_current_amd64.deb"

echo Testing sudo
sudo echo OK

echo
echo Installing Google Chrome
echo
sudo apt -y update
curl -sSL "https://dl.google.com/linux/direct/${FILENAME}" \
  -H "user-agent: Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/111.0.0.0 Safari/537.36" \
  -H "accept: text/html,application/xhtml+xml,application/xml;q=0.9,image/avif,image/webp,image/apng,*/*;q=0.8" \
  -H "referer: https://www.google.com/" \
  -H "accept-language: en-US,en;q=0.9" \
  -H "upgrade-insecure-requests: 1" \
  -H "authority: dl.google.com" \
  --compressed --output "${FILENAME}"
sudo apt -y update
sudo apt -y install "./${FILENAME}"
rm -rf "./${FILENAME}"


echo
echo Setting up Google Chrome
echo
echo 'alias g="google-chrome-stable & " ' >> ~/.bashrc 

echo
echo Google Chrome version
echo
google-chrome-stable --version
