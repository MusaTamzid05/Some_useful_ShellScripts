#!/bin/bash

sudo apt-get install rbenv
git clone git clone https://github.com/rbenv/ruby-build.git ~/.rbenv/plugins/ruby-build
cd .rbenv/ruby_build
./install.sh

