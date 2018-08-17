#!/bin/bash

NUM=1
grep -v '#' /etc/hosts | while read IP HOST
do
  echo "${NUM}: IP: ${IP}"
  echo "${NUM}: Hostname: ${HOST}"
  ((NUM++))
done
