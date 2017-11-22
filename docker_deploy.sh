#!/bin/bash

die() { echo "$@" 1>&2 ; exit 1; }

if [ "$#" -ne 2 ]; then
    [ "$#" -eq 1 ] || die "[docker-tools] 1 (or 2) arguments required ('STACK name', 'docker-stack.yml'), $# provided"
fi

DOCKER_MISSING_TOOLS=$(dirname $(readlink -f $0))
source $DOCKER_MISSING_TOOLS/docker_login.sh

# TARGET not needed...
# IMAGE not needed...
# VERSION not needed...
# REPO not needed...
STACK="$1"
DOCKERSTACKFILE=${2:-"docker-stack-prod.yml"}

# cd $TARGET
# dont build any IMAGE
# dont tag any VERSION
# dont push to any REPO
# cd ..

docker stack deploy -c $DOCKERSTACKFILE $STACK --with-registry-auth
