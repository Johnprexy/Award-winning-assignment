#!/bin/bash

# To Check if exactly one argument is provided
if [ $# -ne 1 ]; then
    echo "Error: Please provide exactly one number as an argument."
    exit 1
fi

# To Check if the input is a non-negative integer
if ! [[ $1 =~ ^[0-9]+$ ]]; then
    echo "Error: The input must be a non-negative integer."
    exit 1
fi

number=$1
factorial=1

# To Calculate factorial
for (( i=1; i<=number; i++ )); do
    factorial=$(( factorial * i ))
done

echo "Factorial of $number is: $factorial"