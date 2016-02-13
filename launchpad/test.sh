docker build -t launchpad .
OUTPUT=$(docker run launchpad debuild --version 2>&1)

if [[ "$OUTPUT" == *"This is debuild, from the Debian devscripts package"* ]];
then
echo "Success"
exit 0
else
echo "Failure"
exit 1
fi
