#!/bin/env bash

mkdir ~/local
cd ~/local

sudo -y apt-get update
sudo -y apt-get install build-essential chrpath git-core libssl-dev libfontconfig1-dev
git clone git://github.com/ariya/phantomjs.git
cd phantomjs
git checkout 1.9
./build.sh