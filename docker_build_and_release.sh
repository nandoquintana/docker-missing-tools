#!/bin/bash

die() { echo "$@" 1>&2 ; exit 1; }

if [ "$#" -ne 5 ]; then
    [ "$#" -eq 4 ] || die "[docker-tools] 4 (or 5) arguments required ('TARGET name', 'IMAGE name', 'VERSION name', 'REPOsitory' and 'Dockerfile'), $# provided"
fi

DOCKER_MISSING_TOOLS=$(dirname $(readlink -f $0))
source $DOCKER_MISSING_TOOLS/docker__login.sh

TARGET="$1"
IMAGE="$2"
VERSION="$3"
REPO="$4"
# STACK not needed...
DOCKERFILE=${5:-"Dockerfile"}

cd $TARGET
docker build . -f $DOCKERFILE -t $IMAGE
docker tag $IMAGE $REPO"/"$IMAGE":"$VERSION
docker push $REPO"/"$IMAGE":"$VERSION
cd ..

# dont' deploy any STACK
