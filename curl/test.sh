#!/bin/bash

docker build -t curl .
OUTPUT=$(docker run curl 2>&1)

if [[ "$OUTPUT" == *"curl 7.42.1 (x86_64-alpine-linux-musl)"* ]];
then
echo "Success"
exit 0
else
echo "Failure"
exit 1
fi
