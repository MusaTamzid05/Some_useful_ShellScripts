#!/bin/bash

'''
This scripts gives you the list all the printing jobs.
You Enter a loop an give your printer job id 
to delete tha job.
'''

total_jobs=$(lpq | grep . -c)
echo $total_jobs

while (( $total_jobs != 0 ))
do
    clear
    echo "Total jobs $total_jobs"
    lpq
    echo "Enter the job id you want to delete or press q to quit."
    read input


    if [ $input == 'q' ]
    then
        break
    fi

    # deleteting the job
    lprm $input

    total_jobs=$(lpq | grep . -c)

done

