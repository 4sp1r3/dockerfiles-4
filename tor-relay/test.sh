#!/bin/bash

docker build -t tor-relay .
OUTPUT=$(docker run tor-relay --help 2>&1)

if [[ "$OUTPUT" == *"Tor v0.2.6.10"* ]];
then
echo "Success"
exit 0
else
echo "Failure"
exit 1
fi
