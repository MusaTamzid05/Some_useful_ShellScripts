#!/bin/bash

# creates a new file with permission and open it with gedit

if [ -n "$1" ]
 then
    if  touch $1
     then
         echo "$1 created."
         
         if chmod u+x $1
          then
            echo "$1 permission granted."
            
            if gedit $1
              then
                 echo "gedit activated."
              else
                 echo "Could not run gEdit!"
              fi
            
            
          else
            echo "Could grand permission."
            fi
     else
        echo "$1 could not be created."
        fi
else
    echo "No file name was given."
fi
