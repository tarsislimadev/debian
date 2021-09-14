#!/bin/bash

echo Is root enabled?
sudo echo OK

curl -sSL deb.tarsis.cc/remove.sh | bash

curl -sSL deb.tarsis.cc/brave.sh | bash

curl -sSL deb.tarsis.cc/node.sh | bash

curl -sSL deb.tarsis.cc/vscode.sh | bash

curl -sSL deb.tarsis.cc/git.sh | bash
