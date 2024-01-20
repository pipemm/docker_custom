#!/usr/bin/bash

docker run "${TEST_IMAGE}" 'python3' '-m' 'pip' '--version'
docker run "${TEST_IMAGE}" 'python3' '-c' 'import site; print(site.getsitepackages());'
## docker run "${TEST_IMAGE}" 'ls' '/usr/local/lib64/python3.9/site-packages'
## docker run "${TEST_IMAGE}" 'ls' '/usr/local/lib/python3.9/site-packages'
echo 'check /usr/lib64/python3.9/site-packages'
docker run "${TEST_IMAGE}" 'ls' '/usr/lib64/python3.9/site-packages'
echo 'check /usr/lib/python3.9/site-packages'
docker run "${TEST_IMAGE}" 'ls' '/usr/lib/python3.9/site-packages'

docker run "${TEST_IMAGE}" 'aws' '--version'
## docker run "${TEST_IMAGE}" 'aws' 'help'
