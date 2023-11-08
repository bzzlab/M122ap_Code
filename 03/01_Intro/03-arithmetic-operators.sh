#!/bin/bash
# Topic: Test conditions with if-then-else and operators
# Arithmetic Operators

if test $# -lt 2;then
  echo "Error: Two integer arguments are required!"
  echo "Exit script."
  exit 1
fi

# read arguments
a=$1
b=$2

sum=$(( a + b ))
echo "Sum : $sum"

sub=$(( a-b ))
echo "Substract : $sub"

multi=$(( a*b ))
echo "Multiply : $multi"

div=$(( a/b ))
echo "Division : $div"

mod=$(( a%b ))
echo "Modulus : $mod"
