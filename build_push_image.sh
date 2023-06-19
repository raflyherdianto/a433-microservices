#!/bin/sh

# membuat image dari Dockerfile
docker build -t item-app:v1 .

# menampilkan daftar image yang ada di local
docker images

# membuat tag image dengan nama yang berbeda
docker tag item-app:v1 raflyherdianto25/item-app:v1

# login ke docker hub
echo $PASSWORD_DOCKER_HUB | docker login -u raflyherdianto25 --password-stdin

# push image ke docker hub
docker push raflyherdianto25/item-app:v1