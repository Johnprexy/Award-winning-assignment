#!/bin/bash

# Function to validate numeric input
validate_input() {
    local num=$1
    if ! [[ "$num" =~ ^[0-9]+$ ]]; then
        echo "Error: Input must be a non-negative integer"
        exit 1
    fi
}

# Get input either from argument or prompt
if [ $# -eq 0 ]; then
    read -p "Enter a number: " number
elif [ $# -gt 1 ]; then
    echo "Error: Too many arguments. Provide one number or none for interactive mode."
    exit 1
else
    number=$1
fi

validate_input "$number"

# Calculate factorial
factorial=1
for (( i=1; i<=number; i++ )); do
    factorial=$(( factorial * i ))
done

# Output directly to stdout (will be captured by the pipeline)
echo "Factorial of $number is: $factorial"