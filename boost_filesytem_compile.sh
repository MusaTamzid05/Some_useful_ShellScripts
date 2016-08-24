#!/bin/bash


if (($# != 2))
	then
	    echo "Usage cpp_file - outputfile"
	    exit
fi

 g++ $1 -lboost_system -lboost_filesystem -o $2