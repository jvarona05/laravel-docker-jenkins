#!/bin/bash

ssh -i /home/jenkins/.ssh/id_rsa jenkins@10.0.0.11 "cd /var/app; export version=${BUILD_TAG}; docker-compose up -d;"