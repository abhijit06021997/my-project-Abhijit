#!/bin/bash

echo "a -for todays date"        # this is for user interaction for thier output user will read it and according to their requrenment user input and set up ther out put value in case 
echo "o - for file list"
echo "l -for cpu information"
echo "d - for hardware information"
echo "f for memory information"

read choice
case $choice in
        a)date;;
        o)ls;;
        l)lscpu;;
        d)dmidecode;;
        f)free -h;;
        *)echo "provide an valide value" 
esac
