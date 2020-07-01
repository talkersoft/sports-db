#!/bin/bash
docker run \
   -e "POSTGRES_PASSWORD=password1" \
   -e "POSTGRES_USER=user" \
   -p 5432:5432 \
   --name pg-docker \
   -v /$HOME/.docker/volumes/postgres-data:/var/lib/postgresql/data/ \
   -d postgres