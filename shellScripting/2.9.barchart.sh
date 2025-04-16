#!/bin/bash

n=$1  # First argument is the number of values

# Loop through each value starting from the second argument
for (( i=2; i<=$((n+1)); i++ ))
do
    num=${!i}  # Get the value of the current argument
    for (( j=0; j<num; j++ ))
    do
        echo -n "*"
    done
    echo ""  # Move to the next line after printing stars
done
