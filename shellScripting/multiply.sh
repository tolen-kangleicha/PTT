#!/bin/sh

if [ $# -ne 2 ]; then
    echo "Usage: multiply <arg1> <arg2>"
    exit 1
fi
num1=$1
num2=$2

result=$(($num1 * $num2))

echo "Result: $result"
