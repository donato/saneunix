#!/bin/env bash


mkdir -p ~/local
git clone git://github.com/ariya/phantomjs.git ~/local/phantomjs
cd ~/local/phantomjs
git checkout 1.9

./build.sh