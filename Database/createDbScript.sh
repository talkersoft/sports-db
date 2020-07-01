#!/bin/bash
# check if the user provided an argument
if [ -z $1 ]; then
    echo "Please provide script name"
    exit 2
fi 


echo "#Generated For dbup" > ./Scripts/$(date +%Y%m%d%H%M%S)_$1.sql