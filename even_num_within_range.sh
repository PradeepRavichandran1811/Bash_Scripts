# Author: Pradeep Ravichandran
#! /bin/bash
even=()
for ((i=1;i<100;i++)); do
        if [ $((i%2)) -eq 0 ]; then
                even+=($i)
        fi
done
echo ${even[@]}
