#!/bin/bash

docker-machine create --driver digitalocean \
--digitalocean-image  ubuntu-16-04-x64 \
--digitalocean-access-token $DOTOKEN node-1 &

docker-machine create --driver digitalocean \
--digitalocean-image  ubuntu-16-04-x64 \
--digitalocean-access-token $DOTOKEN node-2 &

docker-machine create --driver digitalocean \
--digitalocean-image  ubuntu-16-04-x64 \
--digitalocean-access-token $DOTOKEN node-3 &
