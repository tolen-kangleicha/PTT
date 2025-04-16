#!/bin/bash

if [ $# -ne 3 ]; then
    echo "Usage: $0 num1 num2 num3"
    exit 1
fi

least=$1

if [ $2 -lt $least ]; then
    least=$2
fi

if [ $3 -lt $least ]; then
    least=$3
fi

echo $least

