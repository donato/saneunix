#!/bin/env bash

mkdir ~/local
cd ~/local
sudo -y apt-get update
sudo -y apt-get install build-essential git-core

git clone https://github.com/joyent/node.git
cd node
git checkout v0.10.26
./configure
make
sudo make install