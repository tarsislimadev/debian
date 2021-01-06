#!/bin/bash

echo Testing sudo
sudo echo OK
echo 
echo Installing VSCode
echo 
sudo apt update
curl -sL 'https://code.visualstudio.com/sha/download?build=stable&os=linux-deb-x64' -H 'Connection: keep-alive' -H 'Upgrade-Insecure-Requests: 1' -H 'User-Agent: Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/87.0.4280.101 Safari/537.36' -H 'Accept: text/html,application/xhtml+xml,application/xml;q=0.9,image/avif,image/webp,image/apng,*/*;q=0.8,application/signed-exchange;v=b3;q=0.9' -H 'Sec-GPC: 1' -H 'Sec-Fetch-Site: same-origin' -H 'Sec-Fetch-Mode: navigate' -H 'Sec-Fetch-Dest: document' -H 'Referer: https://code.visualstudio.com/docs/?dv=linux64_deb' -H 'Accept-Language: en-US,en;q=0.9,pt-BR;q=0.8,pt;q=0.7' --compressed --output ./code.deb
sudo apt install ./code.deb -y 
rm -rf ./code.deb 
echo
echo VSCode version
echo
code --version
