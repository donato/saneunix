#!/bin/env bash

sudo apt-get -y update
sudo apt-get -y install build-essential git-core openssl libssl-dev pkg-config



mkdir -p ~/local
git clone https://github.com/joyent/node.git ~/local/node
cd ~/local/node
git checkout v0.10.26

make distclean
./configure

make
sudo make install