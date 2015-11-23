#!/bin/bash

docker build -t lynx .
OUTPUT=$(docker run lynx --help 2>&1)

if [[ "$OUTPUT" == *"USAGE: lynx [options] [file]"* ]];
then
echo "Success"
exit 0
else
echo "Failure"
exit 1
fi
