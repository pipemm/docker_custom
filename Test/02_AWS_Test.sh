#!/usr/bin/bash

docker run "${TEST_IMAGE}" 'python3' '-m' 'pip' '--version'
docker run "${TEST_IMAGE}" 'python3' '-c' 'site.getsitepackages();'
docker run "${TEST_IMAGE}" 'python3' '-c' 'import site; site.getsitepackages();'
docker run "${TEST_IMAGE}" 'aws' '--version'
