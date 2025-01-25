#!/bin/bash      #it is used to restrive particular values from databses where columne and table presents .NR!=1 defined for  
                         #dont show line 1 number of row 
cat test.csv | awk 'NR!=1 {print}'|while IFS="," read id name roll_no 
do
        echo "name is $name"
        echo "roll_no  is $roll_no"
        echo "id is $id"

done


vim test.csv

#id,name,roll_no
#101,abhijit,1001
#102,ajit,1002
#102,monu,1003
