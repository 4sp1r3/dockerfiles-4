#!/bin/bash

docker build -t nc .
OUTPUT=$(docker run nc 2>&1)

if [[ "$OUTPUT" == *"BusyBox v1.23.2 (2015-04-24 15:46:01 GMT) multi-call binary."* ]];
then
echo "Success"
exit 0
else
echo "Failure"
exit 1
fi
