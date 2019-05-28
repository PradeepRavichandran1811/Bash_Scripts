# Author:Pradeep Ravichandran
#! /bin/bash
read -p "Enter the number" no
a=1
b=1
for ((i=0;i<no;i++))
do
    echo $a
    f=$(expr $a + $b)
    a=$b
    b=$f
done
