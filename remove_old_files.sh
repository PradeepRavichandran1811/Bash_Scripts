# Author: Pradeep Ravichandran
#! /bin/bash

#Remove files older than a month to save space
#Replace path_of_directory with the path where you want to perform deletion
find /path_of_directory/ -type f -name '*' -mtime +30 -exec rm {} \;