#!/bin/bash

# if a argument is given than go to that file path ,else stay in the current script directory

if(($# == 1))
	then
	    cd $1
	elif (($# > 1))
		then
		    echo "Usage : show.sh path_to_the _directory"
fi




files=$(ls)


for file in $files
   
   do
   	  if [ -d $file ]
   	  	then
   	  	    echo "$file is a directory"

   	  elif [ -d $file ]
   	  	then
   	  	    echo "$file is a file"
   	  fi


 done