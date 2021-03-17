#!/bin/bash
# This script returns the oldest file, given a list of filenames
# save as older.sh

# create the file list ("list= ..."), order it reversely by time ("ls -tr") and pipe output ("|") to display only the first file ("head -n 1") which is the oldest:
list=$(ls -tr | head -n 1)
# print the output of the above:
echo $list
