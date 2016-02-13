docker build -t ubuntu .
OUTPUT=$(docker run ubuntu cat /etc/lsb_release 2>&1)

if [[ "$OUTPUT" == *"trusty"* ]];
then
echo "Success"
exit 0
else
echo "Failure"
exit 1
fi
