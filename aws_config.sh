#! /bin/bash

aws_access_key_id="YOUR KEY HERE"
aws_secret_access_key="YOUR KEY HERE"
profile="[default]"

#Replace directory to '~/.aws/credentials'
DIR='/tmp/.aws/credentials'

if [[ ! -f $DIR ]]; then

echo "credentials does not exists, creating credentials file $DIR"
touch $DIR

fi

echo "$profile">>$DIR
echo "aws_access_key_id=$aws_access_key_id" >> $DIR
echo "aws_secret_access_key=$aws_secret_access_key" >> $DIR

cat $DIR