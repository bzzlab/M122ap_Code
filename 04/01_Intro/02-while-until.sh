#!/bin/bash
# Topic: loops with while and until

# Read arguments
if test $# -lt 2;then
  echo "Error: Two integer arguments are required!"
  echo "Exit script."
  exit 1
fi
# Read arguments
a=$1
b=$2

# as long as it is TRUE
while [[ $a -lt 10 ]]; do
  echo "While Block: $((a++))"
done
echo "--------------------------------"
# as long as it is FALSE
until [[ $b -gt 10 ]]; do
  echo "Until Block: $((b++))"
done
