#!/bin/bash

echo "hellon creating user"
echo "user is $1"
echo "decription is $2"

shift                               #shift devided value from exected user rest of value will be descritpin or coment for user specified by $@-devided 
echo "rest of description is $@"

#we are creating user and give description rest of value noether it will not take for description


# fro executing this $ bash shift_argument.sh abhijit production team 
#abhijitr --for user 
# prodcution team --for rest of descrption devided 
