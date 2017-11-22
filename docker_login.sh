#!/bin/bash

die() { echo "$@" 1>&2 ; exit 1; }

# [ "$#" -eq 0 ] || die "[docker-tools] no argument required, $# provided"

DOCKER_MISSING_TOOLS=$(dirname $(readlink -f $0))
credentials=$(python $DOCKER_MISSING_TOOLS/docker_credentials.py)
arr=($credentials)

i=1
for credential in "${arr[@]}"
do
  if [ $((i % 3)) == 1 ]; then
    REPO=$credential;
  fi
  if [ $((i % 3)) == 2 ]; then
    USER=$credential;
  fi
  if [ $((i % 3)) == 0 ]; then
    PASS=$credential;
    echo "[docker-tools] docker login --username $USER $REPO --password-stdin"
    echo $PASS | docker login --username $USER $REPO --password-stdin
    #docker login -u $USER -p $PASS $REPO

  fi
  ((i++))

done
