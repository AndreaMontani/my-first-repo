#!/usr/bin/env bash
# File: range.sh
### Write a program that takes one number as an argument and 
#   prints all of the numbers between that number and 0.
###syntax: bash range.sh 7

###set -x
###echo "Start program"

input=$1
dwarfs=($input)

if [ $input -gt 0 ] ; then
    while [ $input -gt 0 ] ; do
	mini=$(($input -1))
	dwarfs+=($mini)
        input=$mini
    done
elif [ $input -lt 0 ] ; then
    while [ $input -lt 0 ] ; do
	mini=$(($input +1))
	dwarfs+=($mini)
        input=$mini
    done
fi

echo ${dwarfs[*]}
