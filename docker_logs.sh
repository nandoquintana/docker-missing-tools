#!/bin/bash

die() { echo "$@" 1>&2 ; exit 1; }

[ "$#" -eq 1 ] || die "[docker-tools] 1 argument required ('STACK name'), $# provided"

STACK="$1"

docker_logs_up $STACK
docker_logs_down $STACK
