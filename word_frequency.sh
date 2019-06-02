#Author: Pradeep Ravichandran
#! /bin/bash
#check if file exists
if [ ! -f "$1" ]
then
echo "File $1 doesn't exist"
exit 
fi 

#print one word per line using xargs
cat $1 | xargs -n1 | \
#convert to lowercase
tr A-Z a-z | \
#remove duplicates and sort numerically and in reverse order
sort | uniq -c | sort -nr

exit $?