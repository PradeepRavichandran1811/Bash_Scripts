# Author: Pradeep Ravichandran
#! /bin/bash
read -p "Enter the number" n
factorial=1
for ((i=1;i<=n;i++))
do
    factorial=$(expr $fact \* $i)
done
echo $factorial
