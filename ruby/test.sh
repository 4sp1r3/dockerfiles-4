#!/bin/bash

docker build -t ruby .
OUTPUT=$(docker run ruby --help 2>&1)

if [[ "$OUTPUT" == *"ruby 2.2.2p95 (2015-04-13 revision 50295) [x86_64-linux-musl]"* ]];
then
echo "Success"
exit 0
else
echo "Failure"
exit 1
fi
