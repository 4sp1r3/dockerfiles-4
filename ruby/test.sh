#!/bin/bash

docker build -t ruby .
OUTPUT=$(docker run ruby -v 2>&1)

if [[ "$OUTPUT" == *"ruby 2.2.2p95"* ]];
then
echo "Success"
exit 0
else
echo "Failure"
exit 1
fi
