#!/bin/bash
# Topic: Test conditions with if-then-else and operators

# If statement [ or [[ or ( or (( ?
# https://unix.stackexchange.com/questions/604036/if-statement-or-or-or

# Read arguments
a=$1
b=$2

if test $# -lt 2;then
  echo "Error: Two integer arguments are required!"
  echo "Exit script."
  exit 1
fi

#1 test same as [ condition ]
if test $a -gt $b;then
  echo "1: $a is greater than $b"
else
  echo "1: $a is less than $b"
fi

#2 test same as [ condition ]
if [ $a -gt $b ];then
  echo "2: $a is greater than $b"
else
  echo "2: $a is less than $b"
fi

#2 [[ condition ]]
if [[ $a -gt $b ]];then
  echo "3: $a is greater than $b"
else
  echo "3: $a is less than $b"
fi

#3 (( condition ))
if (( a > b )) ;then
  echo "4: $a is greater than $b"
else
  echo "4: $a is less than $b"
fi
