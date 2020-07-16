#!/usr/bin/env bash

DIR="$( cd "$( dirname "${BASH_SOURCE[0]}" )" && pwd )"
cd $DIR/..

DOCKER_IMAGE=${DOCKER_IMAGE:-jempay/jemcashd-develop}
DOCKER_TAG=${DOCKER_TAG:-latest}

BUILD_DIR=${BUILD_DIR:-.}

rm docker/bin/*
mkdir docker/bin
cp $BUILD_DIR/src/jemcashd docker/bin/
cp $BUILD_DIR/src/jemcash-cli docker/bin/
cp $BUILD_DIR/src/jemcash-tx docker/bin/
strip docker/bin/jemcashd
strip docker/bin/jemcash-cli
strip docker/bin/jemcash-tx

docker build --pull -t $DOCKER_IMAGE:$DOCKER_TAG -f docker/Dockerfile docker
