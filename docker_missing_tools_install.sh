#!/bin/bash

# git clone https://github.com/nandoquintana/docker-missing-tools.git

LOCAL_BIN="/usr/local/bin"
DOCKER_MISSING_TOOLS=$(dirname $(readlink -f $0))
HOME=~

source $(dirname $(readlink -f $0))"/docker_missing_tools_uninstall.sh"

if [ ! -f $LOCAL_BIN"/docker_ls" ]; then
    cp $DOCKER_MISSING_TOOLS"/docker_ls.sh" $LOCAL_BIN"/docker_ls"
fi
if [ ! -f $LOCAL_BIN"/docker_logs" ]; then
    cp $DOCKER_MISSING_TOOLS"/docker_logs.sh" $LOCAL_BIN"/docker_logs"
fi
if [ ! -f $LOCAL_BIN"/docker_logs_up" ]; then
    cp $DOCKER_MISSING_TOOLS"/docker_logs_up.sh" $LOCAL_BIN"/docker_logs_up"
fi
if [ ! -f $LOCAL_BIN"/docker_logs_down" ]; then
    cp $DOCKER_MISSING_TOOLS"/docker_logs_down.sh" $LOCAL_BIN"/docker_logs_down"
fi
if [ ! -f $LOCAL_BIN"/docker_logs_f" ]; then
    cp $DOCKER_MISSING_TOOLS"/docker_logs_f.sh" $LOCAL_BIN"/docker_logs_f"
fi
if [ ! -f $LOCAL_BIN"/docker_ps" ]; then
    cp $DOCKER_MISSING_TOOLS"/docker_ps.sh" $LOCAL_BIN"/docker_ps"
fi
if [ ! -f $LOCAL_BIN"/docker_init" ]; then
    cp $DOCKER_MISSING_TOOLS"/docker_init.sh" $LOCAL_BIN"/docker_init"
fi
if [ ! -f $LOCAL_BIN"/docker_build_and_deploy" ]; then
    cp $DOCKER_MISSING_TOOLS"/docker_build_and_deploy.sh" $LOCAL_BIN"/docker_build_and_deploy"
fi
if [ ! -f $LOCAL_BIN"/docker_build_and_release" ]; then
    cp $DOCKER_MISSING_TOOLS"/docker_build_and_release.sh" $LOCAL_BIN"/docker_build_and_release"
fi
if [ ! -f $LOCAL_BIN"/docker_deploy" ]; then
    cp $DOCKER_MISSING_TOOLS"/docker_deploy.sh" $LOCAL_BIN"/docker_deploy"
fi
if [ ! -f $LOCAL_BIN"/docker_reset" ]; then
    cp $DOCKER_MISSING_TOOLS"/docker_reset.sh" $LOCAL_BIN"/docker_reset"
fi
if [ ! -f $LOCAL_BIN"/docker__clean.sh" ]; then
    cp $DOCKER_MISSING_TOOLS"/docker__clean.sh" $LOCAL_BIN"/docker__clean.sh"
fi
if [ ! -f $LOCAL_BIN"/docker__login.sh" ]; then
    cp $DOCKER_MISSING_TOOLS"/docker__login.sh" $LOCAL_BIN"/"
fi
if [ ! -f $LOCAL_BIN"/docker__credentials.py" ]; then
    cp $DOCKER_MISSING_TOOLS"/docker__credentials.py" $LOCAL_BIN"/"
fi
if [ ! -f $HOME"/.docker_missing_tools_repositories" ]; then
    cp $DOCKER_MISSING_TOOLS"/.docker_missing_tools_repositories" $HOME"/"
fi
