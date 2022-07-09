#!/usr/bin/env bash

DIR="$( cd "$( dirname "${BASH_SOURCE[0]}" )" && pwd )"
cd $DIR/..

DOCKER_IMAGE=${DOCKER_IMAGE:-coincoin/coincoind-develop}
DOCKER_TAG=${DOCKER_TAG:-latest}

BUILD_DIR=${BUILD_DIR:-.}

rm docker/bin/*
mkdir docker/bin
cp $BUILD_DIR/src/coincoind docker/bin/
cp $BUILD_DIR/src/coincoin-cli docker/bin/
cp $BUILD_DIR/src/coincoin-tx docker/bin/
strip docker/bin/coincoind
strip docker/bin/coincoin-cli
strip docker/bin/coincoin-tx

docker build --pull -t $DOCKER_IMAGE:$DOCKER_TAG -f docker/Dockerfile docker
