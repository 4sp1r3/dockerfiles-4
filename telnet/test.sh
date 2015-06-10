#!/bin/bash

docker build -t nc .
OUTPUT=$(docker run nc 2>&1)

if [[ "$OUTPUT" == *"BusyBox v1.22.1 (2014-05-22 23:22:11 UTC) multi-call binary."* ]];
then
echo "Success"
exit 0
else
echo "Failure"
exit 1
fi
