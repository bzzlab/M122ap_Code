#!/bin/bash
# Topic: Test conditions with if-then-else and operators
# String Operators
#  =  Equal to
# !=  Not equal to
# -z  check if string is null (length = 0)
# -n  check if string is not null

#!/usr/bin/env bash
#
echo -n "Username: "
read username

if [[ -z ${username} ]]; then
  echo "Username is null. Exit!"
  exit 1
fi
if [[ ${username} != "ubuntu" ]]; then
  echo "Username is not correct. Exit!"
  exit 2
fi

echo -n "Password: "
read password

if [[ -z ${password} ]]; then
  echo "Password is null. Exit!"
  exit 3
fi
if [[ ${password} != "m122" ]]; then
  echo "Password is not correct. Exit!"
  exit 4
fi

echo "Welcome ${username}. You're now logged in."
