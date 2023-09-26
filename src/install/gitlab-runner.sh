#!/bin/bash

echo Testing sudo
sudo echo OK

echo
echo Download the binary for your system
echo
sudo curl -L --output /usr/local/bin/gitlab-runner https://gitlab-runner-downloads.s3.amazonaws.com/latest/binaries/gitlab-runner-linux-amd64

echo
echo Give it permission to execute
echo
sudo chmod +x /usr/local/bin/gitlab-runner

echo
echo Create a GitLab Runner user
echo
sudo useradd --comment 'GitLab Runner' --create-home gitlab-runner --shell /bin/bash

echo
echo Install and run as a service
echo
sudo gitlab-runner install --user=gitlab-runner --working-directory=/home/gitlab-runner
sudo gitlab-runner start
