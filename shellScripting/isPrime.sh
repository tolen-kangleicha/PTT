#!/bin/sh

isPrime() {
  num=$1
  fact=1
  for i in $(seq 2 $num);
  do
    if [ $(($num % $i)) -eq 0 ]; then
      fact=$(($fact + 1))
    fi
  done
  if [ $fact -gt 2 ]; then
    echo "$num is a not a prime number."
  else 
    echo "$num is a prime number."
  fi    
}

echo -n "Enter a no.: "
read num

isPrime $num
