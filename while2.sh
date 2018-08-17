#!/bin/bash

cat debug.sh | while read LINE
do
   echo "xfs: ${LINE}"
done
