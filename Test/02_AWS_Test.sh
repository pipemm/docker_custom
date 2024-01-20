#!/usr/bin/bash

docker run "${TEST_IMAGE}" 'python3' '-m' 'pip' '--version'
docker run "${TEST_IMAGE}" 'python3' 'site.getsitepackages();'
docker run "${TEST_IMAGE}" 'python3' 'import site; site.getsitepackages();'
docker run "${TEST_IMAGE}" 'aws' '--version'
