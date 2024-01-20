#!/usr/bin/bash

echo 'boto3:'
docker run "${TEST_IMAGE}" 'python3' '-c' 'import boto3; print(boto3.__version__);'
