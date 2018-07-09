#! /bin/bash

echo "Setting read & write permissions"

HOME_DIR="/home"
UPLOAD_DIRS=$(find ${HOME_DIR} -maxdepth 1 -mindepth 1 -type d)

for dir in ${UPLOAD_DIRS}
do
    chmod 711 ${dir}/upload
    echo "Set 711 perms to ${dir}/upload"
done
