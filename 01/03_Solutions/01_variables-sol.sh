#!/bin/bash
echo -n "Geben Sie Ihr Geburtsdatum (yyyy-mm-dd) ein: "
read BIRTHDATE
BIRTHDAY=`date -d "$BIRTHDATE" +%A`
echo "Your birthday on ${BIRTHDATE} is ${BIRTHDAY}!"
