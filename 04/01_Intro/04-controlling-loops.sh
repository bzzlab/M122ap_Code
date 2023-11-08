#!/bin/bash
# Topic: sleep continue break exit

echo "Before the for loop....."

for x in $(seq 5);do
  echo "For Loop : $x"
  if [[ $x -eq 3 ]]; then
    echo ">>>>> Inside the if condition"
    # try either sleep, continue, break or exit
    sleep 2
  fi
  echo "     Inside For Loop: Hello 1"
  echo "     Inside For Loop: Hello 2"
done

echo "After the for loop....."
