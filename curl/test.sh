#!/bin/bash

docker build -t curl .
OUTPUT=$(docker run curl --version 2>&1)

if [[ "$OUTPUT" == *"curl 7.47.0 (x86_64-alpine-linux-musl)"* ]];
then
echo "Success"
exit 0
else
echo "Failure"
exit 1
fi
