# Author: Pradeep Ravichandran
#! /bin/bash
# comm -12 < (sort file1.txt | uniq) < (sort file2.txt | uniq) common on both files
# comm -13 prints unique lines in file2
# comm -23 prints unique lines in file1
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
