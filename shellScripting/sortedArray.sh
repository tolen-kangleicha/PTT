#!/bin/bash

myArr=(3 5 1 6)
size=${#myArr[@]}

ascArray=$(printf "%s\n" "${myArr[@]}" | sort -n)
ascArray=($ascArray)

descArray=$(printf "%s\n" "${myArr[@]}" | sort -nr)
descArray=($descArray)

echo "Original array: ${myArr[@]}"
echo "Asc array: ${ascArray[@]}"
echo "Desc array: ${descArray[@]}"
