#!/bin/bash

no=6
for i in 1 2 3 4 5 6 7 8 9
do
        if [[ $no -eq $i ]]
        then
                echo "$no is found !!!!"
                break
        fi
        echo "number is $i"
done


# break is used to stop the loop 

#we specify the no 6 value f it find value 6 rest of programme not will run that us why break
