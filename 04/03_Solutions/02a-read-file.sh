#!/bin/bash
# Topic: reading files using while
# Example
# ./02a-reading-files.sh animals.txt

if test $# -lt 1;then
  echo "Error: One file argument is required!"
  echo "Exit script."
  exit 1
fi

file=$1
cat $file | while read animal; do
  if [[ $animal = "tiger" ]]; then
    echo "Found the tiger!"
    exit
  fi
  echo $animal
done
