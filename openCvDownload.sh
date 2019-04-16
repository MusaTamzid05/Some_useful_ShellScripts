#!/bin/bash

# this script downloads opencv in your home directory.
# script not tested.
cd
sudo apt-get update
sudo apt-get upgrade


sudo apt-get install build-essential cmake git pkg-config
sudo apt-get install libjpeg8-dev libtiff5-dev libjasper-dev libpng12-dev

sudo apt-get install libavcodec-dev libavformat-dev libswscale-dev libv4l-dev

sudo apt-get install libgtk2.0-dev

sudo apt-get install libatlas-base-dev gfortran

git clone https://github.com/Itseez/opencv.git
git clone https://github.com/opencv/opencv_contrib.git

cd opencv

mkdir build
cd build


cmake -D CMAKE_BUILD_TYPE=RELEASE \
      -D CMAKE_INSTALL_PREFIX=/usr/local \
      -D INSTALL_C_EXAMPLES=ON \
      -D INSTALL_PYTHON_EXAMPLES=ON \
      -D WITH_TBB=ON \
      -D WITH_V4L=ON \
      -D WITH_QT=ON \
      -D WITH_OPENGL=ON \
      -D OPENCV_EXTRA_MODULES_PATH=../../opencv_contrib/modules \
      -D BUILD_EXAMPLES=ON ..
make
sudo make install
