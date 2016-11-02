#!/bin/bash

sudo apt-get install rbenv
git clone git clone https://github.com/rbenv/ruby-build.git ~/.rbenv/plugins/ruby-build
cd .rbenv/ruby_build
./install.sh
 # you can choose any ruby version you like , but i
 # writting a quick script to get ruby running ..
 rbenv install 2.3.0  # this will take some time

# have set the path Note:For ubuntu base os only
# you should change  the ruby version according
# to your need.
 export PATH=/home/musa/.rbenv/versions/2.3.0/bin:$PATH

