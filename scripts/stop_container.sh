#!/bin/bash

CONTAINER_IDS=$(docker ps -q)

if [ -n "$CONTAINER_IDS" ]; then
    docker rm -f $CONTAINER_IDS
else
    echo "No running containers found."
fi
