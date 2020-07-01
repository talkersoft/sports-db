#!/bin/bash
docker stop $(docker ps -aqf "name=pg-docker")