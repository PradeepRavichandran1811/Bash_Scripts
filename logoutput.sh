#! /bin/bash
#Run this script as ./logoutput.sh start_timestamp end_timestamp
#log is the logfile here
time=($(cut -d" " -f4 log))
st=$1
end=$2
awk -v start=$st -v stop=$end -v times=$time 'start <= times && times < stop' log
