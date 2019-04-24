#!/bin/bash


array="" # shell way is to use a global

function split_string {

    str=$1
    dilimeter=$2
    IFS=$dilimeter


    read -ra array <<< $str


}

split_string "1-2-3" "-"


echo "Printing array"

for i in "${array[@]}"
do
   echo $i
done

IFS=" "
