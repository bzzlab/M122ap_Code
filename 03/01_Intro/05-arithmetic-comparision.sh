#!/bin/bash
# Topic: Test conditions with if-then-else and operators
# Conditional Operators
# less than, greater than...etc
# -lt, -gt, -le, -ge, -eq, -ne
# <, >, <=, >=, ==, !=

if test $# -lt 2; then
  echo "Error: Two integer as arguments are required!"
  echo "Exit script."
  exit 1
fi

# read arguments
a=$1
b=$2

if [[ $a -ne $b ]]; then
  echo "1: True"
else
  echo "1: False"
fi

if (( a == b )); then
  echo "2: True"
else
  echo "2: False"
fi
