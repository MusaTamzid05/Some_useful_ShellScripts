#!/bin/bash

if (( $# != 1 ))
then
    echo "You have to give the file name."
    exit
fi

g++ $1 -o test  -lcurlpp -lcurl

