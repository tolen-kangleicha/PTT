#!/bin/sh

#recursive function
factorial() {
  num=$1

  if [ "$num" -le 1 ]; then
    echo 1
  else
    mult=$(factorial $(($num - 1)))
    echo $(($num * $mult))
  fi
}

echo -n "Enter a number: "
read num

if [ "$num" -lt 0 ]; then
  echo "Factorial is not defined for negative numbers."
else
  fact=$(factorial $num) 
  echo "Factorial of $num is $fact"
fi

