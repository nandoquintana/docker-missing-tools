#!/bin/bash

die() { echo "$@" 1>&2 ; exit 1; }

[ "$#" -eq 0 ] || die "[docker-tools] 0 arguments required, $# provided"

echo " "
echo "[docker-tools] removing not running CONTAINERs ..."
echo " "

# "running" "restarting" "running" "removing"
for status in "created" "paused"  "exited" "dead"
do
    for container in $(docker container ls --filter "status=$status" -q); do

        docker container rm -f ${container};

    done
done

echo " "
echo "[docker-tools] removing dangling IMAGEs ..."
echo " "

for image in $(docker images ls --filter "dangling=true" -q); do
    docker image rm ${image};
done
