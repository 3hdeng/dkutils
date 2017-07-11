#!/bin/bash
ver=1.14.0
if [[ $# -eq 1 ]] ; then
  ver=$1
fi

curl -L https://github.com/docker/compose/releases/download/$ver/docker-compose-`uname -s`-`uname -m` > docker-compose

sudo mv docker-compose /usr/local/bin/
sudo chmod +x /usr/local/bin/docker-compose

