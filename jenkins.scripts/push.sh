#!/bin/bash

echo "********************"
echo "** Pushing image ***"
echo "********************"

IMAGE="laravel-docker-jenkins"

echo "** Logging in ***"
docker login -u {{REPOSITORY-NAME}} -p {{USER}}@{{PASSWORD}}
echo "*** Tagging image ***"
docker tag $IMAGE:$BUILD_TAG {{REPOSITORY-NAME}}/$IMAGE:$BUILD_TAG
echo "*** Pushing image ***"
docker push {{REPOSITORY-NAME}}/$IMAGE:$BUILD_TAG

