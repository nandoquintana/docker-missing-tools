#!/bin/bash



LOCAL_BIN="/usr/local/bin"
DOCKER_MISSING_TOOLS=$(dirname $(readlink -f $0))
HOME=~



if [ -f $LOCAL_BIN"/docker_ls" ]; then
    rm $LOCAL_BIN"/docker_ls"
fi
if [ -f $LOCAL_BIN"/docker_logs" ]; then
    rm $LOCAL_BIN"/docker_logs"
fi
if [ -f $LOCAL_BIN"/docker_logs_up" ]; then
    rm $LOCAL_BIN"/docker_logs_up"
fi
if [ -f $LOCAL_BIN"/docker_logs_down" ]; then
    rm $LOCAL_BIN"/docker_logs_down"
fi
if [ -f $LOCAL_BIN"/docker_logs_f" ]; then
    rm $LOCAL_BIN"/docker_logs_f"
fi
if [ -f $LOCAL_BIN"/docker_ps" ]; then
    rm $LOCAL_BIN"/docker_ps"
fi
if [ -f $LOCAL_BIN"/docker_init" ]; then
    rm $LOCAL_BIN"/docker_init"
fi
if [ -f $LOCAL_BIN"/docker_build_and_deploy" ]; then
    rm $LOCAL_BIN"/docker_build_and_deploy"
fi
if [ -f $LOCAL_BIN"/docker_build_and_release" ]; then
    rm $LOCAL_BIN"/docker_build_and_release"
fi
if [ -f $LOCAL_BIN"/docker_deploy" ]; then
    rm $LOCAL_BIN"/docker_deploy"
fi
if [ -f $LOCAL_BIN"/docker_reset" ]; then
    rm $LOCAL_BIN"/docker_reset"
fi
if [ -f $LOCAL_BIN"/docker__clean.sh" ]; then
    rm $LOCAL_BIN"/docker__clean.sh"
fi
if [ -f $LOCAL_BIN"/docker__login.sh" ]; then
    rm $LOCAL_BIN"/docker__login.sh"
fi
if [ -f $LOCAL_BIN"/docker__credentials.py" ]; then
    rm $LOCAL_BIN"/docker__credentials.py"
fi
# if [ -f $HOME"/.docker_missing_tools_repositories" ]; then
#     rm $HOME"/.docker_missing_tools_repositories"
# fi
