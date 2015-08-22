#!/bin/bash
cd ../ruby
docker build -t mikesplain/ruby .

cd ../irb
docker build -t irb .

OUTPUT=$(docker run irb -v 2>&1)

if [[ "$OUTPUT" == *"irb 0.9.6(09/06/30)"* ]];
then
echo "Success"
exit 0
else
echo "Failure"
exit 1
fi
