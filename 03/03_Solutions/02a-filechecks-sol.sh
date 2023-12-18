#!/bin/bash
# Topic: Test conditions with if-then-else and operators
# ${datei} test Operators
# Check if a ${datei} exists

# Check if ${datei} exists (deprecated) --> https://tldp.org/LDP/abs/html/fto.html
declare datei
datei="/etc/passwd"
# Check if regular file exists
if [[ -f ${datei} ]]; then
  echo "2: The ${datei} is found!"
else
  echo "2: The ${datei} is not found!"
fi

# Check if file has not zero size
datei="./02b_myfile.txt"
if [[ -s ${datei} ]]; then
  echo "3: The ${datei} is found and is not empty!"
else
  echo "3: The ${datei} is not present or it is empty!"
fi

# Check if a directory exists
datei="/etc/"
if [[ -d ${datei} ]]; then
  echo "4: The ${datei} is a directory!"
else
  echo "4: The ${datei} is NOT a directory!"
fi

if [[ $(stat -c "%A" ${datei}) =~ "r" ]]; then
  echo "7: You have read perm on ${datei}!"
else
  echo "7:  You do not have read perm on ${datei}!"
fi

if [[ $(stat -c "%A" ${datei}) =~ "w" ]]; then
  echo "7: You have write perm on ${datei}!"
else
  echo "7:  You do not have write perm on ${datei}!"
fi

# Check if you are the owner of the ${datei}
datei="/etc/passwd"
if [[ -O ${datei} ]]; then
  echo "6: You are the owner of ${datei}!"
else
  echo "6: You are not the owner of ${datei}!"
fi

# Check if you are member of the group
if [[ -G ${datei} ]]; then
  echo "7: You are the member of the group of ${datei}!"
else
  echo "7: You are not a member of the group of ${datei}!"
fi

# newer/older
declare datei2
datei2="./02b_passwd.txt"
if [[ ${datei} -nt ${datei2} ]]; then
  echo "8: ${datei} is newer than ${datei2}."
else
  echo "8: ${datei} is older than ${datei2}."
fi

if [[ /etc/passwd.txt -ot ./02b_passwd.txt ]]; then
  echo "8: ${datei} is older than ${datei2}."
else
  echo "8: ${datei} is newer than ${datei2}."
fi
