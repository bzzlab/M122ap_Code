#!/bin/bash
# Topic: Test conditions with if-then-else and operators
# Arithmetic Operators
# ++   Increment by 1
# --   Decrement by 1

if test $# -lt 1;then
  echo "Error: One integer argument is required!"
  echo "Exit script."
  exit 1
fi

# read arguments
a=$1

echo $(( a ))

echo "A:---------------"
echo $(( a++ ))
echo $a    #11
echo "B:---------------"
echo $(( ++a ))  #12
echo $a          #12

echo "C:---------------"
echo $(( a-- ))  #12
echo $a           #11
echo "D:---------------"
echo $(( --a ))  #10
echo $a          #10
