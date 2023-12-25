#!/bin/bash

echo 'Print Working Directory: '
docker run "${TEST_IMAGE}" pwd
echo

echo 'List information about the FILEs: '
docker run "${TEST_IMAGE}" ls --version
docker run "${TEST_IMAGE}" ls --all --almost-all --recursive --time-style=full-iso
echo
