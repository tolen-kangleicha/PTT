#!/bin/bash

if [ $# -ne 2 ]; then
    echo "Usage: $0 m n"
    exit 1
fi

m=$1
n=$2
product=1

for ((i = m; i <= n; i++)); do
    if ((i % 2 != 0)); then
        product=$((product * i))
    fi
done

echo "Product of all the odd numbers from $m to $n is: $product"

