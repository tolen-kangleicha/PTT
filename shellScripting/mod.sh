#!/bin/sh

if [ $# -ne 2 ]; then
    echo "Usage: mod <arg1> <arg2>"
    exit 1
fi
dividend=$1
divisor=$2

if [ $dividend -eq 0 ]; then
    echo "Dividend can not be zero"
    exit 1
fi

while [ $dividend -ge $divisor ]; do
    dividend=$(($dividend - $divisor))
done

echo "Result: $dividend"

