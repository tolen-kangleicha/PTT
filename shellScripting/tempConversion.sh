#!/bin/sh

# Function to convert Celsius to Fahrenheit
celToFah() {
    local cel=$1
    # Formula: (Celsius * 9/5) + 32 = Fahrenheit
    local fah=$(echo "scale=2; ($cel * 9/5) + 32" | bc)
    echo "$cel C is equal to $fah F"
}

fahToCel() {
    local fah=$1
    local cel=$(echo "scale=2; ($fah - 32) * 5/9" | bc)
    echo "$fah F is equal to $cel C"
}

# Read temperature in Celsius from user
echo -n "Enter temperature in Celsius: "
read cel

# Call the conversion function
celToFah $cel

echo -n "\nEnter temperature in Fahrenheit: "
read fah

fahToCel $fah

