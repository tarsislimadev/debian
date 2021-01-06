#!/bin/bash

echo Is root enabled?
sudo echo OK

if [[ -z $NAME ]]; then
  echo "Please set the \$NAME in ~/.bashrc"
  exit 1
fi

if [[ -z $EMAIL ]]; then
  echo "Please set the \$EMAIL in ~/.bashrc"
  exit 1
fi

curl -sSL deb.tarsis.cc/remove.sh | bash

curl -sSL deb.tarsis.cc/install_docker.sh | bash

curl -sSL deb.tarsis.cc/install_node.sh | bash

curl -sSL deb.tarsis.cc/install_python.sh | bash

curl -sSL deb.tarsis.cc/install_vscode.sh | bash

curl -sSL deb.tarsis.cc/git_config.sh | bash

curl -sSL deb.tarsis.cc/install_dbeaver.sh | bash
