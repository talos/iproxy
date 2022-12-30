#!/bin/bash

docker build . -t iproxy
docker run --name iproxy -id iproxy
docker cp iproxy:iproxy/iproxy iproxy
docker rm -f iproxy
