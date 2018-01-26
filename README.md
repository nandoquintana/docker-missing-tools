# Docker Missing Tools

## A set of commands to make docker dev-ops easier


List everything (stacks, services, container, images, volumes) at once:

```
docker_ls
```

Removes everything (except volumes) at once:

```
docker_reset
```


Initialize a swarm:
```
docker_init
```


Create an image from your source code (Dockerfile) and deploy it (docker-stack.yml) with the rest of the stack:
```
docker_build_and_deploy
```


Create an image from your source code (Dockerfile) and upload it to a docker registry:
```
docker_build_and_release
```


Deploy an stack (docker-stack.yml):
```
docker_deploy
```


Display logs
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
