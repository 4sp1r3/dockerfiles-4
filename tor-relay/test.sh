#!/bin/bash

docker build -t tor-relay .
OUTPUT=$(docker run tor-relay --help 2>&1)

if [[ "$OUTPUT" == *"The Tor Project, Inc."* ]];
then
echo "Success"
exit 0
else
echo "Failure"
exit 1
fi
