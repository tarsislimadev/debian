#!/bin/bash

echo Testing sudo
sudo echo OK
echo 
echo Installing DBeaver Community Edition
echo 
sudo apt update
curl 'https://dbeaver.io/files/dbeaver-ce_latest_amd64.deb' -H 'Connection: keep-alive' -H 'Upgrade-Insecure-Requests: 1' -H 'User-Agent: Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/94.0.4606.61 Safari/537.36' -H 'Accept: text/html,application/xhtml+xml,application/xml;q=0.9,image/avif,image/webp,image/apng,*/*;q=0.8,application/signed-exchange;v=b3;q=0.9' -H 'Sec-GPC: 1' -H 'Sec-Fetch-Site: none' -H 'Sec-Fetch-Mode: navigate' -H 'Sec-Fetch-User: ?1' -H 'Sec-Fetch-Dest: document' -H 'Accept-Language: en-US,en;q=0.9,pt-BR;q=0.8,pt;q=0.7' --compressed --output ./dbeaver.deb
sudo apt install -y ./dbeaver.deb 
rm -rf ./dbeaver.deb 
echo 
[[ -e "$(which dbeaver)" ]] && echo DBeaver Installed 
echo 
