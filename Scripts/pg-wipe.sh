#!/bin/bash

docker stop $(docker ps -aqf "name=pg-docker")
docker rm $(docker ps -aqf "name=pg-docker")
sleep 3
rm -rf /$HOME/.docker/volumes/postgres-data/*