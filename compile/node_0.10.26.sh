#!/bin/env bash


mkdir -p ~/local
git clone https://github.com/joyent/node.git ~/local/node
cd ~/local/node
git checkout v0.10.26

make distclean
./configure --prefix=~/local/node
make
make install