#Author: Pradeep Ravichandran
#! /bin/bash
ROOT_UID=0
#Root user id is 0
#UID is current user's ID. Stored in /etc/password
if [ "$UID" -eq "$ROOT_UID" ]
then
        echo "You are the Root User"
else
        echo "You are not a Root User"
fi
exit 0