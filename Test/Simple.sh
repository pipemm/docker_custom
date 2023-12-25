#!/bin/bash

echo 'Print Working Directory: '
docker run "${TEST_IMAGE}" 'pwd'
echo

echo 'Python Version: '
docker run "${TEST_IMAGE}" python --version
echo
