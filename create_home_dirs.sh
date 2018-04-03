#!/bin/bash

echo "Making sure user home dirs exist"

HOME_DIR="/home"
USER_CONF="/etc/sftp/users.conf"

while read user; do
    IFS=':' read -ra username <<< "${user}"
    user_home=${HOME_DIR}/${username}
    mkdir -p ${user_home}/upload
    chmod 755 ${user_home}
done < ${USER_CONF}
