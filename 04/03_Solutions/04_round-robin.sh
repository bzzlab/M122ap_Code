#!/bin/bash
# Beispiel-Aufruf
# ./04_round-robin.sh animals.txt
file="./app-error.log"
if [ ! -f $file ]
then
  echo $file does not exist!
  exit
fi

# create empty file
touch ${file}
# set max file size
MAXSIZE=$((50))
# check file size
size=`du -b ${file} | tr -s '\t' ' ' | cut -d' ' -f1`
#if [[ ${size} -gt ${MAXSIZE} ]]
if [[ size -gt MAXSIZE ]]
then
    echo "New ${file} created!"
    timestamp=`date +%s`
    mv ${file} ${file}.$timestamp
    touch ${file}
fi
