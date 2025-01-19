#!/bin/bash

SOURCE_DIR=/home/ec2-user/logs

R="\e[31m"
G="\e[32m"
N="\e[0m"
Y="\e[33m"

if [ -d $SOURCE_DIR ]
then
   echo -e "$SOURCE_DIR is $G Exists $N"
else
   echo -e "$SOURCE_DIR is $R does not Exists $N"
fi

FILES=$(find $SOURCE_DIR -name "*.log" -mtime +14)
echo "files: $FILES"

while IFS= read -r file
do
   echo "deleting file: $FILES"
   rm -rf $FILE
done <<< $FILES   