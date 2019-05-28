# Author: Pradeep Ravichandran
#! /bin/bash
memory=$( ps -o pid,user,%mem,%cpu,command ax | grep -v PID | sort -nr -k3 | awk '/[0-9]*/{print $1 ":" $2 ":" $4 ":" $5}' )
for i in $memory
do
        PID=$(echo $i|cut -d: -f1)
        USER=$(echo $i|cut -d: -f2)
        COMMAND=$(echo $i|cut -d: -f4)
        CPU=$(echo $i|cut -d: -f3)
        MEM=$( pmap $PID | tail -n 1 | awk '{print $2}')

        echo "PID: $PID"
        echo "USER: $USER"
        echo "COMMAND: $COMMAND"
        echo "CPU Utilization: $CPU"
        echo "MEMORY: $MEM"
        echo ""
done
