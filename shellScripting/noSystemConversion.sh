#!/bin/sh

# Function to convert a decimal number to binary
decToBin() {
  decNum=$1
  echo "obase=2; $decNum" | bc
}

# Function to convert a decimal number to hexadecimal
decToHex() {
  decNum=$1
  #printf "%X\n" "$decNum"
  echo "obase=16; $decNum" | bc
}

# Function to convert a decimal number to octal
decToOct() {
  decNum=$1
  echo "obase=8; $decNum" | bc
}

# Function to handle the conversion
convert() {
   num=$1
   sys=$2

   if [ -z $num ] || [ -z $sys ]; then
     echo "\nError!!"
     exit 1
   fi

   case $sys in 
     bin)
       result=$(decToBin $num)
       echo "\nBinary: $result"
       ;;
     hex)
       result=$(decToHex $num)
       echo "\nHexadecimal: $result"
       ;;
     oct)
       result=$(decToOct $num)
       echo "\nOctal: $result"
       ;;
     *)
       echo "\nUnsupported conversion system. Please use 'binary' or 'hex'."
       exit 1
       ;;
   esac
}

echo -n "\nEnter a decimal number: "
read dec
echo -n "Choose a system to convert (bin/hex/oct): "
read sys

convert $dec $sys

