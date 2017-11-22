#!/bin/bash

die() { echo "$@" 1>&2 ; exit 1; }

[ "$#" -eq 0 ] || die "[docker-tools] 0 arguments required, $# provided"

echo " "
echo "[docker-tools]----------------------------------"
echo "[docker-tools]----------------------------------"
echo "[docker-tools]----------------------------------"
echo "[docker-tools]----------------------------------"
echo " "
echo "[docker-tools] removing STACKs..."
echo " "

for stack in $(docker stack ls | awk '{print $1}');
do 
    if [ ! ${stack} == 'NAME' ]
    then 
        docker stack rm ${stack};
    fi
done

echo " "
echo "[docker-tools]----------------------------------"
echo "[docker-tools]----------------------------------"
echo "[docker-tools]----------------------------------"
echo "[docker-tools]----------------------------------"
echo " "
echo "[docker-tools] removing CONTAINERs..."
echo " "

for container in $(docker container ls -aq | awk '{print $1}');
do 
    if [ ! ${container} == 'CONTAINER' ]
    then
        docker container stop ${container}; 
        docker container rm -f ${container};
    fi
done

echo " "
echo "[docker-tools]----------------------------------"
echo "[docker-tools]----------------------------------"
echo "[docker-tools]----------------------------------"
echo "[docker-tools]----------------------------------"
echo " "
echo "[docker-tools] removing IMAGEs..."
echo " "

for image in $(docker image ls -aq | awk '{print $1}');
do
    arr=$(docker image ls -aq | awk '{print $1}')
    if [[ " ${arr[*]} " == *"${image}"* ]];
    then
        docker image rm -f ${image};
    fi
done

echo " "
echo "[docker-tools]----------------------------------"
echo "[docker-tools]----------------------------------"
echo "[docker-tools]----------------------------------"
echo "[docker-tools]----------------------------------"
echo " "
echo "[docker-tools] pruning containers, images and networks (not volumes)..."
echo " "

docker system prune -f

echo " "
echo "[docker-tools]----------------------------------"
echo "[docker-tools]----------------------------------"
echo "[docker-tools]----------------------------------"
echo "[docker-tools]----------------------------------"
echo " "
