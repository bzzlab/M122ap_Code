#!/bin/bash
# Topic: loop with while

# Read arguments
if test $# -lt 1;then
  echo "Error: Two integer arguments are required!"
  echo "Exit script."
  exit 1
fi
# Read arguments
a=$1

# as long as it is TRUE
while [[ $a -lt 10 ]]; do
  echo "While Block: $((a++))"
done
