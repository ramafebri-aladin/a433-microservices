#! /bin/bash
# Proyek pertama - ramafebri

docker build -t item-app:v1 .
docker images
docker tag item-app:v1 ramafebri/item-app:v1
docker logout
export PASSWORD_DOCKER_HUB=rama260299
echo $PASSWORD_DOCKER_HUB | docker login -u ramafebri --password-stdin
docker push ramafebri/item-app:v1