#!/bin/env bash

mkdir -p ~/local
cd ~/local

wget http://www.zsh.org/pub/zsh-5.0.5.tar.gz
tar -xvf zsh-5.0.5.tar.gz
rm -rf zsh-5.0.5.tar.gz
cd zsh-5.0.5
cd ~/local/zsh-5.0.5/src

make distclean
./configure --prefix=~/local/zsh
make
make install