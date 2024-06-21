#!/bin/bash

echo Testing sudo
sudo echo OK

echo
echo Installing VSCode
echo

sudo apt -y update
VSCODE_PATH=$HOME/code.deb

curl -sSL 'https://code.visualstudio.com/sha/download?build=stable&os=linux-deb-x64' -H 'accept: text/html,application/xhtml+xml,application/xml;q=0.9,image/avif,image/webp,image/apng,*/*;q=0.8,application/signed-exchange;v=b3;q=0.7' -H 'accept-language: en-US,en;q=0.9,pt;q=0.8' -H 'cookie: MSFPC=GUID%3D769750819a90c9cf4a34c50cc3737c2c%26HASH%3D7697%26LV%3D202406%26V%3D4%26LU%3D1719004209733; MicrosoftApplicationsTelemetryDeviceId=1a509b35-3862-4d42-ba44-5a376acff1a5; ai_session=wNjE+IszzjcwV8M0AcoRoc|1719004212409|1719004222523' -H 'priority: u=0, i' -H 'referer: https://code.visualstudio.com/docs/?dv=linux64_deb' -H 'upgrade-insecure-requests: 1' -H 'user-agent: Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/126.0.0.0 Safari/537.36' --compressed --output $VSCODE_PATH

sudo apt -y install $VSCODE_PATH
rm -rf $VSCODE_PATH

echo
echo VSCode version
echo
code --version
