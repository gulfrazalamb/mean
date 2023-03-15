#!/bin/bash

# Read the input from the user
read -p "Enter a comma-separated list of numbers: " input

# Split the input string into an array using ',' as the delimiter
IFS=',' read -ra numbers <<< "$input"

# Calculate the sum of the numbers
sum=0
for num in "${numbers[@]}"; do
  sum=$((sum + num))
done

# Calculate the mean
mean=$(echo "scale=2; $sum / ${#numbers[@]}" | bc)

# Print the mean
echo "The mean is: $mean"
