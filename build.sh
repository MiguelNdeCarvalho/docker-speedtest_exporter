#!/bin/bash

REPO=miguelndecarvalho/docker-speedtest_exporter

echo "Starting AMD64 build..."
docker build -t $REPO:amd64-latest --no-cache . -f Dockerfile
docker push $REPO:amd64-latest

echo "Starting ARM build..."
docker build -t $REPO:arm32v7-latest --no-cache . -f Dockerfile.arm
docker push $REPO:arm32v7-latest

echo "Starting ARM64 build..."
docker build -t $REPO:arm64v8-latest --no-cache . -f Dockerfile.arm64
docker push $REPO:arm64v8-latest

echo "Creating manifest.."
docker manifest create \
$REPO:latest \
--amend $REPO:amd64-latest \
--amend $REPO:arm64v8-latest \
--amend $REPO:arm32v7-latest

docker manifest push $REPO:latest
