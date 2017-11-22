#!/bin/bash

die() { echo "$@" 1>&2 ; exit 1; }

[ "$#" -eq 0 ] || die "[docker-tools] 0 arguments required, $# provided"

echo " "
docker stack ls

echo " "
docker service ls --format="table {{.ID}}\t{{.Image}}\t{{.Name}}\t{{.Ports}}" | grep "ID" | sed -r 's/ID        /SERVICE ID/g'
docker service ls --format="table {{.ID}}\t{{.Image}}\\t{{.Name}}\t{{.Ports}}" | grep -v "ID" | sort -t \t -k 3

echo " "
docker container ls -a --format="table {{.ID}}\t{{.Image}}\t{{.Names}}\t{{.Status}}" | grep "CONTAINER ID"
docker container ls -a --filter="status=created" --format="table {{.ID}}\t{{.Image}}\\t{{.Names}}\t{{.Status}}" | grep -v "CONTAINER ID" | sort -t \t -k 3
docker container ls -a --filter="status=restarting" --format="table {{.ID}}\t{{.Image}}\\t{{.Names}}\t{{.Status}}" | grep -v "CONTAINER ID" | sort -t \t -k 3
docker container ls -a --filter="status=running" --format="table {{.ID}}\t{{.Image}}\\t{{.Names}}\t{{.Status}}" | grep -v "CONTAINER ID" | sort -t \t -k 3
docker container ls -a --filter="status=removing" --format="table {{.ID}}\t{{.Image}}\\t{{.Names}}\t{{.Status}}" | grep -v "CONTAINER ID" | sort -t \t -k 3
docker container ls -a --filter="status=paused" --format="table {{.ID}}\t{{.Image}}\\t{{.Names}}\t{{.Status}}" | grep -v "CONTAINER ID" | sort -t \t -k 3
docker container ls -a --filter="status=exited" --format="table {{.ID}}\t{{.Image}}\\t{{.Names}}\t{{.Status}}" | grep -v "CONTAINER ID" | sort -t \t -k 3
docker container ls -a --filter="status=dead" --format="table {{.ID}}\t{{.Image}}\\t{{.Names}}\t{{.Status}}" | grep -v "CONTAINER ID" | sort -t \t -k 3

#"created" "restarting" "running" "removing" "paused" "exited" "dead"

echo " "
docker image ls -a --format="table {{.ID}}\t{{.Repository}}\t{{.Tag}}\t{{.CreatedSince}}" | grep "IMAGE ID"
docker image ls -a --format="table {{.ID}}\t{{.Repository}}\t{{.Tag}}\t{{.CreatedSince}}" | grep -v "IMAGE ID" | sort -t \t -k 2

echo " "
docker volume ls

# echo " "
# docker network ls

echo " "
