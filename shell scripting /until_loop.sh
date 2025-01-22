#!/bin/bash

a=10
until [[ $a -eq 1 ]]
do
        echo "value of a is $a"
        let a--
done



#it is reverse of while loop it print less value that specified value value should b less or equal to 1 
