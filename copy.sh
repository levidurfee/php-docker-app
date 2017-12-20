#!/bin/bash
rm -Rf tmp.tar.gz
tar -czf tmp.tar.gz *
docker-machine scp -r tmp.tar.gz node-1:/root
docker-machine ssh node-1 "mkdir /code;tar -xf tmp.tar.gz -C /code"

docker-machine scp -r tmp.tar.gz node-2:/root
docker-machine ssh node-2 "mkdir /code;tar -xf tmp.tar.gz -C /code"

docker-machine scp -r tmp.tar.gz node-3:/root
docker-machine ssh node-3 "mkdir /code;tar -xf tmp.tar.gz -C /code"
