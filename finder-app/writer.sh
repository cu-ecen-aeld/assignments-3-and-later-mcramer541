#!/bin/bash

writefile=$1
writestr=$2

if [ $# -ne 2 ]
then 
	echo "This file requires two arguments, writefile and writestr"
	exit 1
fi


folder=$(dirname "$writefile")

#make the folder if it does not exist
if [ ! -d $folder ]
then
	mkdir -p $folder
fi

#put the contents of the string into the folder
echo "$writestr" > "$writefile"

#check to see if the writefile exists, if it doesn't exist, show the error otherwise exit
if [ ! -f $writefile ]
then
	echo "The file could not be created"
       exit 1
else
	echo "Sucessfully created the file!"
	exit 0

fi 

