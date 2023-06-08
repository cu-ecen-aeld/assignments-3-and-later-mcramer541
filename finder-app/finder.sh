#!/bin/bash

if [ $# -ne 2 ]
then
    echo "Usage: finder.sh [filesdir] [searchstr]"
    exit 1
elif [ ! -d "$1" ]
then
    echo "Error: [filesdir] not a directory"
    exit 1
fi

echo "The number of files are $(find $1 -type f | wc -l)" \
     "and the number of matching lines are $(grep -Rs $2 $1 | wc -l)"
exit 0
