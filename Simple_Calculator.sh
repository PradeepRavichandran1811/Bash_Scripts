# Author: Pradeep Ravichandran
# Simple Calculator that performs basic operations:Add, Multiply, Divide, Subtract
#! /bin/bash
result=0
a='y'
read -p "Enter first number" first
read -p "Enter second number" second
while [ $a = 'y' ]
do
        echo "Operations available"
        echo "1-Addition"
        echo "2-Subtraction"
        echo "3-Multiplication"
        echo "4-Division"
        read -p "Enter your operation" op
        case $op in
        1)
                result=$(expr $first + $second)
                echo "Addition result:" $result
                ;;
        2)
                result=$(expr $first - $second)
                echo "Subtraction result:" $result
                ;;
        3)
                result=$(expr $first \* $second)
                echo "Multiplication result:" $result
        4)
                result=$(expr $first / $second)
                echo "Division result:" $result
                ;;
        *)
                echo "Error: Select from the valid operations!"
                ;;
        esac
        read -p "Do you want to do again? (y/n)" b
        if [ $b = 'n' ]
        then
                exit
        fi
done
