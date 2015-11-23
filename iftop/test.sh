#!/bin/bash

docker build -t iftop .
OUTPUT=$(docker run iftop --help 2>&1)

if [[ "$OUTPUT" == *"iftop, version 0.17"* ]];
then
echo "Success"
exit 0
else
echo "Failure"
exit 1
fi
