#!/bin/env bash

sudo apt-get -y update
sudo apt-get -y install build-essential mercurial ncurses-dev luajit libluajit-5.1
sudo ln -s /usr/bin/luajit-2.0.0-beta9 /usr/bin/luajit


mkdir -p ~/local
hg clone https://vim.googlecode.com/hg/ ~/local/vim
cd ~/local/vim/src
hg pull

make distclean
./configure --with-features=huge \
			--enable-fail-if-missing \
			--enable-gui=yes \
			--enable-rubyinterp \
			--enable-luainterp \
			--with-luajit

make
sudo make install