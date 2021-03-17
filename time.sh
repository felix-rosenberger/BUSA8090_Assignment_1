#!/bin/bash
# When executing this script:
# nothing happens when time is between 0-20 minutes past the hour
# it will ring once when time is between 20-40 minutes past the hour
# it will ring twice when time is between 40-60 minutes past the hour

# set the time variable to the minute within an hour:
time=$(date +%M)
# set the if statement to differentiate between different points in time within one hour:
if [ $time -ge 20 ] && [ $time -le 39 ] # from 20 to 40
then
	echo -e "\a" # one beep
elif [ $time -ge 40 ] && [ $time -le 59 ] # from 40 to 60
then
	echo -e "\a" # first beep
	sleep 1 # sleep one second
	echo -e "\a" # second beep
else
	exit # do nothing
fi
