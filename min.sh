#!/bin/bash

echo Is root enabled?
sudo echo OK

curl -sSL deb.tarsis.cc/remove.sh | bash

curl -sSL deb.tarsis.cc/install_brave.sh | bash

curl -sSL deb.tarsis.cc/install_node.sh | bash

curl -sSL deb.tarsis.cc/install_vscode.sh | bash

curl -sSL deb.tarsis.cc/install_git.sh | bash
