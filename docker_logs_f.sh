#!/bin/bash

die() { echo "$@" 1>&2 ; exit 1; }

[ "$#" -eq 0 ] || die "[docker-tools] 0 arguments required, $# provided"

echo " "
journalctl -fu docker.service
