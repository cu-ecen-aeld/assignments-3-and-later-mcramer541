#!/bin/bash

if [ $# -ne 2 ]
then
    echo "Usage: writer.sh [writefile] [writestr]"
    exit 1
fi

mkdir -p $(dirname $1)
echo $2 > $1

if [ $? -eq 1 ]
then
    echo "Could not create $1"
    exit 1
fi
exit 0
