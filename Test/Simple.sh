#!/bin/bash

echo 'Print Working Directory: '
docker run "${TEST_IMAGE}" pwd
echo

echo 'ls: '
docker run "${TEST_IMAGE}" ls --help
echo
