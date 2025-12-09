#!/bin/bash
:<<'TASK'
Sie haben die Aufgabe 01_login-v1.sh erfolgreich programmiert
und getestet.

Verbessern Sie in dieser Aufgabe deren Umsetzung indem
Sie logische Operatoren verwenden. Dazu stehen Ihnen zusätzlich
folgenden logische Operatoren zur Verfügung:

# Logical Operators
# && - Logical AND
# || - Logical OR
# !  - Logical NOT
TASK

# Ask username
read -p "Username: " username #??
# Ask passwort
read -p "Password: " password #??

if [[ -z ${username} || -z ${password} ]] #??
then #??
    echo "Username or password is null. Exit!" #??
    exit 1; #??
elif [[ "$username" != "ubuntu" || "$password" != "m122" ]] #??
then #??
    echo "Username or password is not correct." #??
    exit 2; #??
else #??
      echo "Welcome user ubuntu." #??
fi #??
