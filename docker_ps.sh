#!/bin/bash

die() { echo "$@" 1>&2 ; exit 1; }

[ "$#" -eq 0 ] || die "[docker-tools] 0 arguments required, $# provided"

echo " "
netstat -putan | grep dockerd

echo " "

for stack in $(docker stack ls --format "{{.Name}}"); do

    if [[ "$stack" != "NAME" ]];then
    	docker stack ps $stack
		echo " "
        docker stack ps $stack --no-trunc --format "{{.ID}} {{.Error}}"
    fi

done

echo " "
