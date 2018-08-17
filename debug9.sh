#!/bin/bash -x
set -x
PS4='+ ${BASH_SOURCE}:${LINENO}:${FUNCNAME[0]}()'
debug() {
   echo "Executing: $2"
   $@
}
debug ls
set +x
