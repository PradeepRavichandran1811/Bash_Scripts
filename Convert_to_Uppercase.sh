#Author: Pradeep Ravichandran
#Script to Convert lowercase letters to Uppercase letters
#! /bin/bash
read -p "Enter any lowercase letters" l
echo $l |tr '[:lower:]' '[:upper:]' #To convert lower case letters to upper case using translate (tr) command
