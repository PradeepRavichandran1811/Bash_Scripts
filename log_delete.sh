#Author: Pradeep Ravichandran
#! /bin/bash
#Run these as root
cd /var/log
cat /dev/null > messages
cat /dev/null > wtmp
echo "Successfully deleted logs!"