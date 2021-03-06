#!/bin/bash
#BashPairTree
#pt.sh
#copyright 2020, Eric C. Weig
filename='data.txt'
n=1
while read line; do
# reading each line
IFS=':' read -r -a array <<< "$line"
string="${array[0]}"
mkdir -p pair_tree/${string:0:2}/${string:2:2}/${string:4:2}/${string:6:2}/${string:8:2}/${string:10:2}/${string:12:2}/${string:14:2}/${string:16:2}/${string:18:2}/${string:20:2}/"${array[0]}"
echo "${array[1]}" > pair_tree/${string:0:2}/${string:2:2}/${string:4:2}/${string:6:2}/${string:8:2}/${string:10:2}/${string:12:2}/${string:14:2}/${string:16:2}/${string:18:2}/${string:20:2}/"${array[0]}"/"${array[0]}".txt
n=$((n+1))
done < $filename
