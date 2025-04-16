#!/bin/bash

# Define the array
array=(10 5 8 20 15)
echo "The original array is: ${array[@]}"
echo 

# Function to sum all elements in the array
sum_array() {
    sum=0
    for i in "${array[@]}"; do
        sum=$((sum + i))
    done
    echo "Sum of all elements: $sum"
    echo
}

# Function to calculate the average of elements in the array
average_array() {
    sum=0
    count=${#array[@]}
    for i in "${array[@]}"; do
        sum=$((sum + i))
    done
    average=$(echo "scale=2; $sum / $count" | bc)
    echo "Average value of elements: $average"
    echo
}

# Function to remove an element from the array
remove_element() {
  read -p "Enter the element to remove: " element    
  new_array=()

  for i in "${array[@]}"; do
    if [ "$i" != "$element" ]; then
        new_array+=("$i")
    fi
  done

  # Replace the old array with the new array
  array=("${new_array[@]}")

  echo "Array after removing element: ${array[@]}"
  echo
}

# Function to sort the array
sort_array() {
    sorted_array=($(for i in "${array[@]}"; do echo $i; done | sort -n))
    echo "Sorted array: ${sorted_array[@]}"
    echo
}

# Menu for array operations
while true; do
    echo "Choose an operation:"
    echo "1. Sum of all elements"
    echo "2. Average value of elements"
    echo "3. Remove an element"
    echo "4. Sort the array"
    echo "5. Exit"
    echo
    read -p "Enter your choice: " choice

    case $choice in
        1)
            sum_array
            ;;
        2)
            average_array
            ;;
        3)
            remove_element
            ;;
        4)
            sort_array
            ;;
        5)
            exit 0
            ;;
        *)
            echo "Invalid choice. Please try again."
            ;;
    esac
done

