#!/bin/bash

echo 'Print Working Directory: '
docker run "${TEST_IMAGE}" pwd
echo

echo 'Bourne Again Shell: '
docker run "${TEST_IMAGE}" bash --version
echo

echo 'List information about the FILEs: '
docker run "${TEST_IMAGE}" ls --version
echo

echo 'AWK: '
docker run "${TEST_IMAGE}" awk --version
echo

echo 'Stream EDitor: '
docker run "${TEST_IMAGE}" sed --version
echo
