#!/bin/bash

if [ $# -ne 2 ]; then
    echo "Usage: $0 m n"
    exit 1
fi

m=$1
n=$2
sum=0

for ((i = m; i <= n; i++)); do
    if ((i % 2 == 0)); then
        sum=$((sum + i))
    fi
done

echo "Sum of all the even numbers from $m to $n is: $sum"

