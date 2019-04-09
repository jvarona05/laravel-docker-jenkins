#!/bin/bash

PROJECT_PATH=/home/jenkins/jenkins-data/jenkins_home/workspace/laravel-pipeline

docker run -v $PROJECT_PATH:/app composer "$@"
