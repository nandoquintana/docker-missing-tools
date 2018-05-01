#!/bin/bash

die() { echo "$@" 1>&2 ; exit 1; }

if [ "$#" -ne 5 ]; then
	if [ "$#" -ne 4 ]; then
    	[ "$#" -eq 3 ] || die "[docker-tools] 3 (or 4) arguments required ('TARGET name', IMAGE name', 'Dockerfile'), $# provided"
    fi
fi

DOCKER_MISSING_TOOLS=$(dirname $(readlink -f $0))
source $DOCKER_MISSING_TOOLS/docker__login.sh

TARGET="$1"
IMAGE="$2"
VERSION="dev"
# REPO not needed...
# STACK not needed...
# DOCKERSTACKFILE not needed...
DOCKERFILE=${5:-"Dockerfile"}

cd $TARGET
docker build . -f $DOCKERFILE -t $IMAGE
docker tag $IMAGE "$IMAGE":$VERSION
# dont' push to any REPO
cd ..

# dont' deplay any STACK
