#!/bin/bash

logit () {
   local LOG_LEVEL=$1
   shift
   MSG=$@
   TIMESTAMP=$(date +"%Y-%m-%d %T")
   if [ $LOG_LEVEL = 'ERROR' ] || $VERBOSE
   then
      echo "${TIMESTAMP} ${HOST} ${PROGRAME_NAME} : ${LOG_LEVEL} ${MSG}"
	  echo "${PID}"
   fi
}
SERVICE="logit.sh"
PID=$(ps -a | sed -n /${SERVICE}/p)
HOST=$(curl ipecho.net/plain)
logit INFO "Processing data."
