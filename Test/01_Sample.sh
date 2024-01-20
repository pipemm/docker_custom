#!/usr/bin/bash

docker run "${TEST_IMAGE}" 'pwd'
docker run "${TEST_IMAGE}" 'python3' '--version'
