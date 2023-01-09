#!/bin/bash

echo Testing sudo
sudo echo OK

echo
echo Cmake
echo
sudo apt install -y cmake

echo
echo Rsync
echo
alias nr=' rm -rf $HOME/pub/kde && mkdir -p $HOME/pub/kde && rsync -rlpt --delete rsync.kde.org::kdeftp $HOME/pub/kde & '

echo
echo OWN
echo
alias own=' sudo chown 1000:1000 . -R '

echo
echo echo OK
echo
alias s=' sudo echo OK '
