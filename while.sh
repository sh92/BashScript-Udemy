#!/bin/bash

LINE_NUM=1
while read LINE
do
   echo "${LINE_NUM}: ${LINE}"
   ((LINE_NUM++))
done < debug.sh 

echo

grep xfs debug.sh | while read LINE
do
   echo "xfs: ${LINE}"
done
