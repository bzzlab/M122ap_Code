#!/bin/bash
# Topic: Test conditions with if-then-else and operators

# If statement [ or [[ or ( or (( ?
# https://unix.stackexchange.com/questions/604036/if-statement-or-or-or

if test $# -lt 2;then
  echo "Error: Two integer arguments are required!"
  echo "Exit script."
  exit 1
fi

# Read arguments
a=$1
b=$2

## Compare a and b and print
# which one is greater or lower than
# test condition
#??
# [[ condition ]] - preferable
#??
# (( condition ))
#??
  echo "$a is greater than $b"
else
  echo "$a is lower than $b"
fi


# The double bracket is an enhanced (and newer version) version
# of the single bracket.
# [ condition ]
#??
#  echo "$a is greater than $b"
#else
#  echo "$a is lower than $b"
#fi
