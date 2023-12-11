#!/bin/bash
# Topic: Test conditions with if-then-else and operators
# String Operators
#  =  Equal to
# !=  Not equal to
# -z  check if string is null (length = 0)
# -n  check if string is not null

# Ask username
echo -n "Username: "
read username
# Ask passwort
echo -n "Passwort: "
read password

if [[ -z ${username} || -z ${password} ]]; then
    echo "Username or password is null. Exit!"
    exit 1;
  else
    if [[ "$username" != "ubuntu" || "$password" != "m122" ]]; then
        echo "Username or password is not correct."
        exit 2;
    else
      echo "Welcome user ubuntu."
    fi
fi
