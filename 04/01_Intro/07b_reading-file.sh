#!/bin/bash
# Topic: reading files using for
# Beispiel-Aufruf
# ./07b-reading-files.sh animals.txt
file=$1
if [ ! -f $file ]
then
  echo $file does not exist!
  exit
fi

for animal in $(cat $file)
do
  if [[ $animal = *"tiger"* ]]; then
      printf "%s" "found " ${animal}
      break;
  fi
done

