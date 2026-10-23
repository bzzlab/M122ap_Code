#!/bin/bash
# Topic: Test conditions with if-then-else and operators
# Conditional Operators
# less than, greater than...etc
# -lt, -gt, -le, -ge, -eq, -ne
# <, >, <=, >=, ==, !=  only for string-comparison!!!

# Check number of arguments passed
if [[ $# -lt 2 ]] #??
#if [[ $# < 2 ]] #??
then #??
  echo "Error: Two arguments are required!"  #??
  echo "Exit script!" #??
  exit 1 #??
fi #??

a=$1
b=$2

printf "You have provided the following parameters: %s %s\n" \
 "$a" "$b"

