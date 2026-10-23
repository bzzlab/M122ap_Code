#!/bin/bash
#
# Topic: Test conditions with if-then-else and operators
# Conditional Operators
# less than, greater than...etc
# -lt, -gt, -le, -ge, -eq, -ne
# <, >, <=, >=, ==, !=  only for string-comparison!!!
#
read -p "Discount Code: " code  #??

# check if variable is null with the option -z
if [[ -z ${code} ]] #??
then
  echo "Code is null. Exit!"
  exit 1
fi
# check if variable is not equal
if [[ ${code} -ne "1234" ]]; then #??
  echo "Code is not correct. Exit!"
  exit 2
fi

echo "You have a 30% discount on your purchases."
