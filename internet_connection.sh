#! /bin/bash
ping -c 3 "google.com"
if [ $? -eq 0 ] # $? is the exit status of previous command. If the exit status is 0, then ping command succeeded. It is called positional parameter.
then
    echo "Internet is Working!"
else
    echo "You are Offline!"
fi