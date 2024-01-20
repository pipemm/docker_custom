#!/usr/bin/bash

docker run "${TEST_IMAGE}" 'aws' '--version'
docker run "${TEST_IMAGE}" 'python3' '-m' 'pip' '--version'
docker run "${TEST_IMAGE}" 'python3' '-c' 'import boto3; print(boto3.__version__);'
