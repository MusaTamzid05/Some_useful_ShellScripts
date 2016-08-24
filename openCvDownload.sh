#!/bin/bash

# this script downloads opencv in your home directory.
cd
sudo apt-get update
sudo apt-get upgrade


sudo apt-get install build-essential cmake git pkg-config
sudo apt-get install libjpeg8-dev libtiff4-dev libjasper-dev libpng12-dev

sudo apt-get install libavcodec-dev libavformat-dev libswscale-dev libv4l-dev

sudo apt-get install libgtk2.0-dev

sudo apt-get install libatlas-base-dev gfortran

git clone https://github.com/Itseez/opencv.git

cd opencv

mkdir build
cd build

cmake ..
make
sudo make install
