#!/bin/env bash

sudo apt-get -y update
sudo apt-get -y install Freetype build-essential chrpath git-core libssl-dev libfontconfig1-dev



mkdir -p ~/local
git clone git://github.com/ariya/phantomjs.git ~/local/phantomjs
cd ~/local/phantomjs
git checkout 1.9

./build.sh