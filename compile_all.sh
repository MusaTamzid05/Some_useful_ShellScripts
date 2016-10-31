#!/bin/bash



# Compiles all the header and cpp files is given director using g++


# if one file is given ,then thats the output
#Please see compile_all_.sh for compile with directories that has .h and .cpp file

output_file_name='output'

if(( $# == 1 ))
	then
	    output_file_name = $1

else
	    output_file_name="output"
fi




files=$(ls)

h_cpp_files=''
for file in $files
do
	if [[ $file == *.cpp ]] || [[ $file == *.h ]]
		then
		    
		     h_cpp_files="$h_cpp_files  $file " 
	fi
done

g++ $h_cpp_files -o $output_file_name
