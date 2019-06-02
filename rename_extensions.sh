#Author: Pradeep Ravichandran
#! /bin/bash
#run script as ./rename_extensions.sh old_extension new_extension
for filename in *.$1
do
        mv $filename ${filename%$1}$2 #Strip the part of filename matching $1 and append new extension
done
exit
