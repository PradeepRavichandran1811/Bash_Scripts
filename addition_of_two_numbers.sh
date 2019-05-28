# Author: Pradeep Ravichandran
#! /bin/bash
read -p "Enter first number" first
read -p "Enter second number" second
sum=$(expr $first + $second)
echo $sum
