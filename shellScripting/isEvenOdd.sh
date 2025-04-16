#!/bin/sh
#
isEven() {
  num=$1
  if [ $(($num % 2)) -eq 0 ]; then
    echo "$num is an even number." 
  else
    echo "$num is an odd number."
  fi 
}

echo -n "Enter a number: "
read num
isEven $num
