#Author: Pradeep Ravichandran
#! /bin/bash
#Backup all files modified last week
#Specify backup name while running script
Backup=7daybackup-$(date +%m-%d-%Y)
bup=${1:-$Backup}
#if no filename specified, it will be saved as 7daybackup-mm-dd-yyyy.tar.gz
tar -cvf - `find / -mtime -7 -type f -print` > $bup.tar
gzip $bup.tar
echo " Backed up files in \"$bup.tar.gz\" "
