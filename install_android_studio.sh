#!/bin/bash

echo Testing sudo
sudo echo OK
echo 
echo Installing Android Studio
echo 
sudo apt update
curl -sSL 'https://redirector.gvt1.com/edgedl/android/studio/ide-zips/4.1.1.0/android-studio-ide-201.6953283-linux.tar.gz' -H 'authority: redirector.gvt1.com' -H 'upgrade-insecure-requests: 1' -H 'user-agent: Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/87.0.4280.101 Safari/537.36' -H 'accept: text/html,application/xhtml+xml,application/xml;q=0.9,image/avif,image/webp,image/apng,*/*;q=0.8,application/signed-exchange;v=b3;q=0.9' -H 'sec-gpc: 1' -H 'sec-fetch-site: cross-site' -H 'sec-fetch-mode: navigate' -H 'sec-fetch-user: ?1' -H 'sec-fetch-dest: document' -H 'accept-language: en-US,en;q=0.9,pt-BR;q=0.8,pt;q=0.7' --compressed --output ./android-studio-ide.tar.gz 
7z x android-studio-ide.tar.gz 
7z x android-studio-ide.tar
sudo chmod 755 android-studio/bin/*.sh
mv ./android-studio/ ~/.android-studio
echo "export PATH=$HOME/.android-studio/bin:$PATH" >> ~/.bashrc 
rm -rf ./android-studio-ide*
echo
[[ -e ~/.android-studio/bin/studio.sh ]] && echo Android Studio installed
echo
