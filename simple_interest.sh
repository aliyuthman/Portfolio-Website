#!/bin/bash

# Simple Interest Calculator

# Function to calculate simple interest
calculate_simple_interest() {
  principal=$1
  rate=$2
  time=$3

  # Simple Interest Formula: SI = (P * R * T) / 100
  interest=$(echo "scale=2; ($principal * $rate * $time) / 100" | bc)
  echo "Simple Interest: $interest"
}

# Get user input
read -p "Enter the principal amount: " principal
read -p "Enter the interest rate (in percentage): " rate
read -p "Enter the time (in years): " time

# Call the function with user input
calculate_simple_interest "$principal" "$rate" "$time"
