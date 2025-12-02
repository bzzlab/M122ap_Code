#!/bin/bash
# Topic: Test conditions with if-then-else and operators
# Conditional Operators
# What is wrong?

a=5
b=10
if [[ $a > $b ]]
then
 echo "$a is greater than $b"
else
  echo "$a is lower than $b"
fi