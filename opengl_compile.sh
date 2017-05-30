#!/bin/bash


if(($# == 2))
then
   g++ -std=c++11  $1 -o $2 -lglut -lGL -lGLU -lGLEW
fi
