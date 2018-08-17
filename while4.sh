#!/bin/bash

while true
do 
  read -p "1: Show disk usage. 2: Show uname." CHOICE
  case "$CHOICE" in
    1)
	  df -h
	  ;;
	2)
	  uname -a
	  ;;
	3)
	  break
	  ;;
  esac
done
