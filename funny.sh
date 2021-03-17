#!/bin/bash
# This script prints either "This is funny" or "This is not funny" depending on the argument given
# save as funny.sh

# create if statement where the expression tests whether the number of arguments is equal to zero ("[ $# -eq 0 ]):
if [ $# -eq 0 ]
then
	echo "This is NOT funny" # if test is true i.e. no arguments
else
	echo "This is funny" # if test is false i.e. arguments provided
fi
