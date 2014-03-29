#!/bin/env bash

sudo apt-get -y update
sudo apt-get -y install build-essential

mkdir -p ~/local
cd ~/local

wget http://cache.ruby-lang.org/pub/ruby/2.1/ruby-2.1.1.tar.gz
tar -xvf ruby-2.1.1.tar.gz
rm -rf ruby-2.1.1.tar.gz
cd ruby-2.1.1
./configure
make
sudo make install