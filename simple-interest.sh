#!/bin/bash

# Script to calculate simple interest

# Prompt user for input
read -p "Enter the principal amount (P): " principal
read -p "Enter the rate of interest (R): " rate
read -p "Enter the time period in years (T): " time

# Validate inputs
if [[ ! "$principal" =~ ^[0-9]+(\.[0-9]+)?$ || ! "$rate" =~ ^[0-9]+(\.[0-9]+)?$ || ! "$time" =~ ^[0-9]+(\.[0-9]+)?$ ]]; then
  echo "Invalid input. Please enter numeric values."
  exit 1
fi

# Calculate simple interest
simple_interest=$(echo "scale=2; ($principal * $rate * $time) / 100" | bc)

# Display the result
echo "The Simple Interest is: $simple_interest"
