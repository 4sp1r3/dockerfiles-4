#!/bin/bash

docker build -t nc .
OUTPUT=$(docker run nc 2>&1)

if [[ "$OUTPUT" == *"BusyBox v1.24.1 (2015-12-16 08:00:02 GMT) multi-call binary."* ]];
then
echo "Success"
exit 0
else
echo "Failure"
exit 1
fi
