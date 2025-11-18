#!/bin/bash
# Topic: Function Basics
today=`date  --iso-8601`

# Funktionen deklarieren
function f1 { #??
  echo "Willkommen im Modul $1!" #??
} #??
 #??
function f2 { #??
  echo "Heute am $today findet der Input zum Thema $2." #??
} #??
 #??
# Aufruf der Funktionen
f1 "$1" #??
f2 "$today" "$2" #??
