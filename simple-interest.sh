#!/bin/bash

echo "Simple Interest Calculator"

read -p "Enter principal amount: " principal
read -p "Enter annual rate of interest (%): " rate
read -p "Enter time period in years: " time

interest=$(awk -v p="$principal" -v r="$rate" -v t="$time" \
    'BEGIN { printf "%.2f", (p * r * t) / 100 }')

echo "Principal: $principal"
echo "Rate: $rate%"
echo "Time: $time years"
echo "Simple Interest: $interest"
