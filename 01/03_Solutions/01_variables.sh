#!/bin/bash
:<<'TASK'
Programmieren Sie ein Bash-Script, das den Wochentag Ihres Geburtsdatum
ermittelt.

Beispiel:
$ ./01_variables.sh
Geben Sie Ihr Geburtsdatum (yyyy-mm-dd) ein: 2008-03-11
Your birthday on 2008-03-11 is Tuesday!

TASK

echo -n "Geben Sie Ihr Geburtsdatum (yyyy-mm-dd) ein: " #??
read BIRTH_DATE #??
DAY=`date -d "$BIRTH_DATE" +%A` #??
echo "Your birthday on ${BIRTH_DATE} is ${DAY}!" #??
