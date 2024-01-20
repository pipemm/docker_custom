#!/usr/bin/bash

echo 'AWS CLI:'
docker run "${TEST_IMAGE}" 'aws' '--version'

echo 'boto3:'
docker run "${TEST_IMAGE}" 'python3' '-c' 'import boto3; print(boto3.__version__);'
