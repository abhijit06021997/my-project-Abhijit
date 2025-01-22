#!/bin/bash

while IFS="," read id name age
do
        echo "id is $id"
        echo "name is $name"
        echo "age is $age"
done <test.csv


#test.csv
id,name,age
01,abhi,28
02.ajit.26
02,monu,26
