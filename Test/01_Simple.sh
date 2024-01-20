#!/usr/bin/bash

echo 'print working directory: '
docker run "${TEST_IMAGE}" 'pwd'

echo 'Python 3: '
docker run "${TEST_IMAGE}" 'python3' '--version'
