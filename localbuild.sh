#!/bin/bash
DOCKER_TAG=${DOCKER_TAG:-latest}
docker build -t elek/hive-base:$DOCKER_TAG hive-base
docker build -t elek/hive-metastore:$DOCKER_TAG hive-metastore
docker build -t elek/hive-hiveserver2:$DOCKER_TAG hive-hiveserver2
