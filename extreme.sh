#!/usr/bin/env bash
# File: extreme.sh
### Write a program called extremes which prints the maximum and minimum values of a sequence of numbers.
###syntax: bash extreme.sh 7 6  88 3434 667 7 7


###set -x
###echo "Start program"

iniarray=($@)

max=${iniarray[0]}
min=${iniarray[0]}


for i in ${iniarray[*]} ; do
    # Update max if applicable
    if [[ "$i" -gt "$max" ]]; then
        max="$i"
    fi
    # Update min if applicable
    if [[ "$i" -lt "$min" ]]; then
        min="$i"
    fi
done

echo $min ' ' $max
