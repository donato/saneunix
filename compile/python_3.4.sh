#!/bin/env bash

sudo apt-get -y update
sudo apt-get -y install build-essential


mkdir -p ~/local
cd ~/local

wget https://www.python.org/ftp/python/3.4.0/Python-3.4.0.tgz
tar -xvf Python-3.4.0.tgz
rm -rf Python-3.4.0.tgz
cd Python-3.4.0
./configure
make
sudo make install