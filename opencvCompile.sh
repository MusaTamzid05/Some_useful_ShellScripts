#!/bin/bash

# this files show how to compile opencv files
if(($# == 2))
then
   g++ -std=c++11  $1 -o $2 `pkg-config --cflags --libs opencv`
fi
