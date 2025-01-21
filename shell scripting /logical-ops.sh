#!/bin/bash

read -p "what is your age?" age        #set of iput for user according to user input it will output 
read -p "your country?" country

if [[ $age -ge 18 ]] && [[ $country == "india" ]]

then
       echo "you can vote"
else
        echo "you cant vote in india"
fi
