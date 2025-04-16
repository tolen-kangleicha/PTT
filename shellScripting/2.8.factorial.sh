#!/bin/bash

factorial() {
    if [ $1 -le 1 ]; then
        echo 1
    else
        last=$(factorial $(($1 - 1)))
        echo $(($1 * $last))
    fi
}

if [ $# -ne 2 ]; then
    echo "Usage: $0 n m"
    exit 1
fi

n=$1
m=$2

for ((i = n; i <= m; i++)); do
    echo "$i! = $(factorial $i)"
done

