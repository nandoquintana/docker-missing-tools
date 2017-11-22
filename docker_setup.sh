#!/bin/bash

# git clone https://github.com/nandoquintana/docker-missing-tools.git

rm /usr/local/bin/docker_*

ln -s $(dirname $(readlink -f $0))"/docker_ls.sh" "/usr/local/bin/docker_ls"
ln -s $(dirname $(readlink -f $0))"/docker_logs.sh" "/usr/local/bin/docker_logs"
ln -s $(dirname $(readlink -f $0))"/docker_logs_up.sh" "/usr/local/bin/docker_logs_up"
ln -s $(dirname $(readlink -f $0))"/docker_logs_down.sh" "/usr/local/bin/docker_logs_down"
ln -s $(dirname $(readlink -f $0))"/docker_logs_f.sh" "/usr/local/bin/docker_logs_f"
ln -s $(dirname $(readlink -f $0))"/docker_ps.sh" "/usr/local/bin/docker_ps"

ln -s $(dirname $(readlink -f $0))"/docker_init.sh" "/usr/local/bin/docker_init"
ln -s $(dirname $(readlink -f $0))"/docker_build_and_deploy.sh" "/usr/local/bin/docker_build_and_deploy"
ln -s $(dirname $(readlink -f $0))"/docker_build_and_release.sh" "/usr/local/bin/docker_build_and_release"
ln -s $(dirname $(readlink -f $0))"/docker_deploy.sh" "/usr/local/bin/docker_deploy"

ln -s $(dirname $(readlink -f $0))"/docker_reset.sh" "/usr/local/bin/docker_reset"
ln -s $(dirname $(readlink -f $0))"/docker_clean.sh" "/usr/local/bin/docker_clean"

ln -s $(dirname $(readlink -f $0))"/docker_login.sh" "/usr/local/bin/docker_login"
