#!/bin/env bash

mkdir -p ~/local
cd ~/local

wget https://www.python.org/ftp/python/3.4.0/Python-3.4.0.tgz
tar -xvf Python-3.4.0.tgz
rm -rf Python-3.4.0.tgz
cd Python-3.4.0

make distclean
./configure --prefix=~/local/python3
make
make install