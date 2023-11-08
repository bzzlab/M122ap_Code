#!/bin/bash
#
# Name: simple loop
# Aufruf mit bash -x <script>
#
clear
# debugging scripts in 2 ways
# either set -x or call script with bash -x <script>
# set -x
# falls Argument $1 leer, dann ...
if [ -z $1 ]; then
  echo "Ein Zahl als Argument fehlt!"
  exit 1
fi
echo "Loop mit for"
for ((i=0;i<$1;i++)) do
  echo $i
done
echo "Loop mit while"
k=0
while [ $k -lt $1 ]; do
  echo $k
  let k=k+1
done
