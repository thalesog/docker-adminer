#!/bin/bash

set -eux

VERSION=4.8.1

IMAGE_NAME=thalesog/adminer:latest hooks/build
docker tag thalesog/adminer:latest thalesog/adminer:$VERSION

docker push thalesog/adminer:$VERSION
docker push thalesog/adminer:latest
