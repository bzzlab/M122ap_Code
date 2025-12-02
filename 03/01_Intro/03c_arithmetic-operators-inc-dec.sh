#!/bin/bash
# Topic: Test conditions with if-then-else and operators
# metic Operators
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
(( a++ ))
echo $a    #11
echo "B:---------------"
(( ++a ))  #12
echo $a          #12

echo "C:---------------"
(( a-- ))  #12
echo $a           #11
echo "D:---------------"
(( --a ))  #10
echo $a          #10
