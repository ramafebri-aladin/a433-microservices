#! /bin/bash
# Karsajobs - ramafebri

docker build -t karsajobs:latest .
docker images
docker tag karsajobs:latest ramafebri/karsajobs:latest
docker logout
export PASSWORD_DOCKER_HUB=rama260299
echo $PASSWORD_DOCKER_HUB | docker login -u ramafebri --password-stdin
docker push ramafebri/karsajobs:latest