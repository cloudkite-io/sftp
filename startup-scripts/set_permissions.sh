#! /bin/bash

echo "Setting write only permissions"

HOME_DIR="/home"
UPLOAD_DIRS=$(find ${HOME_DIR} -maxdepth 1 -mindepth 1 -type d)

for dir in ${UPLOAD_DIRS}
do
    chmod 311 ${dir}/upload
    echo "Set 311 perms to ${dir}/upload"
done
