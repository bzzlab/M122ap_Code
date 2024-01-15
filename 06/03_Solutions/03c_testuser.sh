#!/bin/bash

# Number of users to create
max=5
i=1
while [[ i -le max ]];
do
  userdel user"$i"
  rm -rf /home/user"$i"
  ((i++))
done
