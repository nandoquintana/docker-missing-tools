# Docker Missing Tools

A set of commands to make docker dev-ops easier.

Docker Missing Tools help to automate dev-ops tasks without including noise to source code.

Avoid creating typical helper scripts like "build.sh" and "deploy.sh" inside shared code repositories.


## ls

List everything (stacks, services, container, images, volumes) at once:
```
$ docker_ls
```

## reset

Remove everything (except volumes) at once:
```
$ docker_reset
```

## init

Initialize a swarm:
```
$ docker_init
```

## build and deploy

Create an image from your source code (and a Dockerfile) and deploy it (according a docker-stack.yml) with the rest of the stack:
```
$ docker_build_and_deploy TARGET IMAGE STACK [docker-stack.yml] [Dockerfile]
```
Arguments description:
- TARGET: is the directory with the source code to build.
- IMAGE: is the name for the new image.
- STACK: is the name for the new stack.
- docker-stack.yml: (optional) is the YML file where the new stack is defined.
- Dockerfile: (optional) is the Docker file where the new image is defined (must exist inside TARGET directory).


## build and release

Create an image from your source code (and a Dockerfile) and upload it to a Docker registry:
```
docker_build_and_release TARGET IMAGE VERSION REPOSITORY [Dockerfile]
```
Arguments description:
- TARGET: is the directory with the source code to build.
- IMAGE: is the name for the new image.
- VERSION: is the tag for the new image.
- REPOSITORY: is the Docker repository where image will be uploaded to.
- Dockerfile: (optional) is the Docker file where the new image is defined (must exist inside TARGET directory).

## deploy

Deploy an stack (docker-stack.yml):
```
docker_deploy STACK [docker-stack.yml]
```
Arguments description:
- STACK: is the name for the new stack.
- docker-stack.yml: (optional) is the YML file where the new stack is defined.


## logs

Display logs:
```
docker_logs
docker_logs_up
docker_logs_down
docker_logs_f
```

# Install Docker Missing Tools

Get the scripts and move them to local "bin" directory:
```
git clone https://github.com/nandoquintana/docker-missing-tools.git ~/docker_missing_tools
cd ~/docker_missing_tools
./docker_missing_tools_install.sh
```
Setup Docker repositories credentials (user and passwords):
```
emacs ~/.docker_missing_tools_repositories
```


# Uninstall Docker Missing Tools

```
cd ~/docker_missing_tools
./docker_missing_tools_uninstall.sh
```
