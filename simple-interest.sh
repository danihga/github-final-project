#!/usr/bin/env bash

read -r -p "Enter the principal amount: " principal
read -r -p "Enter the annual interest rate (enter 5 for 5%): " rate
read -r -p "Enter the time period in years: " years

awk -v principal="$principal" -v rate="$rate" -v years="$years" 'BEGIN {
    interest = principal * rate * years / 100
    printf "Simple interest: %.2f\n", interest
}'
