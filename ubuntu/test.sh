docker build -t mikesplain/ubuntu .
OUTPUT=$(docker run mikesplain/ubuntu cat /etc/lsb-release 2>&1)

if [[ "$OUTPUT" == *"trusty"* ]];
then
echo "Success"
exit 0
else
echo "Failure"
exit 1
fi
