# Docker Missing Tools

## A set of commands to make docker dev-ops easier

###### ls

List everything (stacks, services, container, images, volumes) at once:
```
$ docker_ls
```

###### reset

Remove everything (except volumes) at once:
```
$ docker_reset
```

###### init

Initialize a swarm:
```
$ docker_init
```

###### build and deploy

Create an image from your source code (Dockerfile) and deploy it (docker-stack.yml) with the rest of the stack:
```
$ docker_build_and_deploy TARGET IMAGE STACK [docker-stack.yml] [Dockerfile]
```
Arguments description:
```
TARGET: is the directory with the source code to build.

IMAGE: is the name for the new image.

STACK: is the name for the new stack.

docker-stack.yml: (optional) is the YML file where the new stack is defined.

Dockerfile: (optional) is the Docker file where the new image is defined (must exist inside TARGET directory).
```

###### build and release

Create an image from your source code (Dockerfile) and upload it to a docker registry:
```
docker_build_and_release
```

###### deploy

Deploy an stack (docker-stack.yml):
```
docker_deploy
```

###### logs

Display logs:
```
docker_logs
docker_logs_up
docker_logs_down
docker_logs_f
```

## Install

```
git clone https://github.com/nandoquintana/docker-missing-tools.git ~/docker_missing_tools
cd ~/docker_missing_tools
./docker_missing_tools_install.sh
```

## Uninstall

```
cd ~/docker_missing_tools
./docker_missing_tools_uninstall.sh
```
