#!/usr/bin/env bash

echo "Enter principal:"
read -r principal
echo "Enter rate of interest:"
read -r rate
echo "Enter time period:"
read -r time_period

simple_interest=$(awk -v p="$principal" -v r="$rate" -v t="$time_period" 'BEGIN { printf "%.2f", (p * r * t) / 100 }')

echo "The simple interest is: $simple_interest"
