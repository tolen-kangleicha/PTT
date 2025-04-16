#!/bin/bash

if [ $# -lt 2 ]; then
    echo "Usage: $0 num1 num2 ..."
    exit 1
fi

count=$1
sum=0

for i in $(seq 2 $((count + 1))); do
    num=${!i} #assigning the ith positional value
    sum=$((sum + num))
done

echo "Sum of the sequence is: $sum"

