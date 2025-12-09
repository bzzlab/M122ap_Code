#!/bin/bash
# Topic: loop with until

# Read arguments
if test $# -lt 1;then
  echo "Error: Two integer arguments are required!"
  echo "Exit script."
  exit 1
fi
# Read arguments
a=$1

# as long as it is FALSE
until [[ $a -gt 10 ]]; do
  echo "Until Block: $((a++))"
done
