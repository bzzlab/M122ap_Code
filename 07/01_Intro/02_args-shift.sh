#!/bin/bash
# Reading arguments the standard way
#
<<'###'
#a b c d
shift
#b c d
shift
#c d
###

if test $# -lt 3;then
  echo "Error: Provide at least 3 arguments!"
  echo "Exit script."
  exit 1
fi
# using shift
while [[ $# -gt 0 ]]; do
  echo "Total arguments: $# - $*"
  echo "Argument passed: $1"
  shift 2
  #shift
done

