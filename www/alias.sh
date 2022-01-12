#!/bin/bash

alias nr=' rm -rf $HOME/pub/kde && mkdir -p $HOME/pub/kde && rsync -rlpt --delete rsync.kde.org::kdeftp $HOME/pub/kde & '

alias own=' sudo chown 1000:1000 . -R '

alias s=' sudo echo OK '
