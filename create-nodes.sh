#!/bin/bash

docker-machine create --driver digitalocean \
--digitalocean-image  ubuntu-16-04-x64 \
--digitalocean-size 1gb \
--digitalocean-ssh-key-fingerprint a9:a9:3c:0b:4a:34:f1:92:62:b0:54:80:67:32:19:92 \
--digitalocean-tags docker,dev \
--digitalocean-private-networking \
--digitalocean-access-token $DOTOKEN node-1 &

docker-machine create --driver digitalocean \
--digitalocean-image  ubuntu-16-04-x64 \
--digitalocean-size 1gb \
--digitalocean-ssh-key-fingerprint a9:a9:3c:0b:4a:34:f1:92:62:b0:54:80:67:32:19:92 \
--digitalocean-tags docker,dev \
--digitalocean-private-networking \
--digitalocean-access-token $DOTOKEN node-2 &

docker-machine create --driver digitalocean \
--digitalocean-image  ubuntu-16-04-x64 \
--digitalocean-size 1gb \
--digitalocean-ssh-key-fingerprint a9:a9:3c:0b:4a:34:f1:92:62:b0:54:80:67:32:19:92 \
--digitalocean-tags docker,dev \
--digitalocean-private-networking \
--digitalocean-access-token $DOTOKEN node-3 &
