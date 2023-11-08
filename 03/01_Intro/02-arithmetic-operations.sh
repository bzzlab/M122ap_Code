#!/bin/bash
# Topic: Test conditions with if-then-else and operators
# Arithmetic Operators

if test $# -lt 2;then
  echo "Error: Two integer arguments are required!"
  echo "Exit script."
  exit 1
fi

declare -i a=$1
declare -i b=$2
declare -i sum1 sum2 sum3 sum4

sum1=$a+$b
echo "1: Sum is $sum1"

sum2=$((a+b))
echo "2: Sum is $sum2"

sum3=`expr $a + $b`
echo "3: Sum is $sum3"

let sum4=$a+$b
echo "4: Sum is $sum4"
