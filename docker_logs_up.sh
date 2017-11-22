#!/bin/bash

die() { echo "$@" 1>&2 ; exit 1; }

[ "$#" -eq 1 ] || die "[docker-tools] 1 argument required ('STACK name'), $# provided"

STACK="$1"

for status in "running"
do
    for sid in $(docker container ls --filter "status=$status" -q); do

        stack=$(docker inspect --format "{{index .Config.Labels \"com.docker.stack.namespace\" }}" $sid)
        if [[ "$stack" == "$STACK" ]];then
            echo " "
            echo "[docker-tools] --------------------------------------------------------------------------------------------------"
            echo "[docker-tools] ID        " $(docker inspect --format "{{.ID}}" $sid)
            echo "[docker-tools] Name      " $(docker inspect --format "{{.Name}}" $sid)
            echo "[docker-tools] Status    " $(docker inspect --format "{{.State.Status}}" $sid)
            echo "[docker-tools] FinishedAt" $(docker inspect --format "{{.State.FinishedAt}}" $sid) | sed -r 's/T/\t/g'
            echo " "
            docker logs $sid
            echo " "
            echo " "
            echo " "
            echo " "
        fi
    done
done
