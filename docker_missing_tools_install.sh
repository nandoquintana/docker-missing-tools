#!/bin/bash

# git clone https://github.com/nandoquintana/docker-missing-tools.git

LOCAL_BIN="/usr/local/bin"
DOCKER_MISSING_TOOLS=$(dirname $(readlink -f $0))
HOME=~

source $(dirname $(readlink -f $0))"/docker_missing_tools_uninstall.sh"

if [ ! -f $LOCAL_BIN"/docker_ls" ]; then
    ln -s $DOCKER_MISSING_TOOLS"/docker_ls.sh" $LOCAL_BIN"/docker_ls"
fi
if [ ! -f $LOCAL_BIN"/docker_logs" ]; then
    ln -s $DOCKER_MISSING_TOOLS"/docker_logs.sh" $LOCAL_BIN"/docker_logs"
fi
if [ ! -f $LOCAL_BIN"/docker_logs_up" ]; then
    ln -s $DOCKER_MISSING_TOOLS"/docker_logs_up.sh" $LOCAL_BIN"/docker_logs_up"
fi
if [ ! -f $LOCAL_BIN"/docker_logs_down" ]; then
    ln -s $DOCKER_MISSING_TOOLS"/docker_logs_down.sh" $LOCAL_BIN"/docker_logs_down"
fi
if [ ! -f $LOCAL_BIN"/docker_logs_f" ]; then
    ln -s $DOCKER_MISSING_TOOLS"/docker_logs_f.sh" $LOCAL_BIN"/docker_logs_f"
fi
if [ ! -f $LOCAL_BIN"/docker_ps" ]; then
    ln -s $DOCKER_MISSING_TOOLS"/docker_ps.sh" $LOCAL_BIN"/docker_ps"
fi
if [ ! -f $LOCAL_BIN"/docker_init" ]; then
    ln -s $DOCKER_MISSING_TOOLS"/docker_init.sh" $LOCAL_BIN"/docker_init"
fi
if [ ! -f $LOCAL_BIN"/docker_build_and_deploy" ]; then
    ln -s $DOCKER_MISSING_TOOLS"/docker_build_and_deploy.sh" $LOCAL_BIN"/docker_build_and_deploy"
fi
if [ ! -f $LOCAL_BIN"/docker_build_and_release" ]; then
    ln -s $DOCKER_MISSING_TOOLS"/docker_build_and_release.sh" $LOCAL_BIN"/docker_build_and_release"
fi
if [ ! -f $LOCAL_BIN"/docker_deploy" ]; then
    ln -s $DOCKER_MISSING_TOOLS"/docker_deploy.sh" $LOCAL_BIN"/docker_deploy"
fi
if [ ! -f $LOCAL_BIN"/docker_reset" ]; then
    ln -s $DOCKER_MISSING_TOOLS"/docker_reset.sh" $LOCAL_BIN"/docker_reset"
fi
if [ ! -f $LOCAL_BIN"/docker_clean" ]; then
    ln -s $DOCKER_MISSING_TOOLS"/docker_clean.sh" $LOCAL_BIN"/docker_clean"
fi
if [ ! -f $LOCAL_BIN"/docker_login" ]; then
    ln -s $DOCKER_MISSING_TOOLS"/docker_login.sh" $LOCAL_BIN"/docker_login"
fi
if [ ! -f $HOME"/.docker_missing_tools_repositories" ]; then
    cp $DOCKER_MISSING_TOOLS"/.docker_missing_tools_repositories" $HOME"/"
fi
