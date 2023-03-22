#! /bin/bash
# Karsajobs UI - ramafebri

docker build -t karsajobs-ui:latest .
docker images
docker tag karsajobs-ui:latest ramafebri/karsajobs-ui:latest
docker logout
export PASSWORD_DOCKER_HUB=rama260299
echo $PASSWORD_DOCKER_HUB | docker login -u ramafebri --password-stdin
docker push ramafebri/karsajobs-ui:latest