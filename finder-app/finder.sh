#!/bin/bash

#Matt Cramer
#Assignment 1

#Label the two variables that are being passed through as desribed in the assignment
filesdir=$1
searchstr=$2


#This if statement checks how many arguments are passed and exits if there are not two, one for each variable
if [ $# -ne 2 ]
then
	echo "There must be two variables input"
	exit 1
fi

#This if statement checks if the file exists on the document
if [ ! -d $filesdir ]
then
	echo "This directory does not exist or the variable is incorrectly formated"
	exit 1
fi


totfiles=$(find "$filesdir" -type f | wc -l)
tothits=$(grep =r "$filesdir" -e "$searchstr" | wc -l)

echo "the number of files are $totfiles and the number of matching lines are $tothits"

exit 0

