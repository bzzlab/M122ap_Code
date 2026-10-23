#!/bin/bash
#
# Text "Geben Sie Ihren Name ein: "
echo -n "Geben Sie Ihren Namen ein: "
# Benutzereingabe einlesen und in eine Variable speichern
read NAME
# Ausgabe "Guten Morgen Benutzereingabe "
echo "Guten Morgen ${NAME}!"
