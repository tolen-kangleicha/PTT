#!/bin/bash

gcc -o  output 2.1.naturalNo.c

for N in {10..20}; do
    ./output $N > "outputDir/output_$N.txt"
done

