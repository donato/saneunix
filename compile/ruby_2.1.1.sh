#!/bin/env bash

mkdir -p ~/local
cd ~/local

wget http://cache.ruby-lang.org/pub/ruby/2.1/ruby-2.1.1.tar.gz
tar -xvf ruby-2.1.1.tar.gz
rm -rf ruby-2.1.1.tar.gz
cd ruby-2.1.1

make distclean
./configure --prefix=~/local/ruby
make
make install