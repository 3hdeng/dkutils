#!/bin/bash
curl -L https://github.com/docker/compose/releases/download/1.9.0/docker-compose-`uname -s`-`uname -m` > docker-compose

sudo mv docker-compose /usr/local/bin/
sudo chmod +x /usr/local/bin/docker-compose

