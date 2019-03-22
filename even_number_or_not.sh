#! /bin/bash
read -p "Enter a number" no
if [ $((no%2)) -eq 0 ]
then 
    echo $no is even
else
    echo $no is odd
fi