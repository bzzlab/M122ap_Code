#!/bin/bash
# Topic: global vs local variables
animal=$1
echo "1: The animal is (before the function) : $animal"

function function1 {
  local animal="Tiger"
  echo "2: The animal is (inside the function) : $animal"
}

function1
echo "3: The animal is (after the function) : $animal"
