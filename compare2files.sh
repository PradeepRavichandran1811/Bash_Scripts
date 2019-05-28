# Author: Pradeep Ravichandran
#! /bin/bash
file=($(cut -d" " -f 1 f1.txt))
file1=($(cut -d" " -f 1 f2.txt))
#echo ${file[@]}
result=()
for item1 in "${file[@]}"; do
        #echo $item1
        for item2 in "${file1[@]}"; do
                if [[ $item1 = $item2 ]]; then
                        result+=("$item1")
                fi
        done
done
echo ${result[@]}
