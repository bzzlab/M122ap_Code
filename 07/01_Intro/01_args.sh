#!/bin/bash
# Reading arguments the standard way
#
if test $# -lt 3;then
  echo "Error: Provide at least 3 arguments!"
  echo "Exit script."
  exit 1
fi
for arg in "$@"; do
  echo "Argument passed: $arg"
done
