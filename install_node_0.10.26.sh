#!/bin/env bash
#install node 0.10.26 from source

mkdir ~/local
cd ~/local
git clone https://github.com/joyent/node.git
cd node
git checkout 0.10.26
./configure
make
sudo make install