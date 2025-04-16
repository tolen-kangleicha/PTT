#!/bin/bash

if [ $# -ne 2 ]; then
    echo "Usage: $0 destination_file source_file"
    exit 1
fi

cp "$2" "$1"

