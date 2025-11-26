#!/bin/bash
:<<'TASK'
Erstellen Sie eine Library mit zwei Variablen
(Benennung und Inhalt nach Ihrer Wahl) und einer Funktion.
Die Funktion gibt Hostnamen und die IP-Adresse
Ihrer AWS EC2 Instanz ermittelt und ausgibt.

Die Library wird durch die Datei 05_test.sh verwendet.
Voraussetzung für diese Aufgabe ist 03_ip.sh
TASK
clear
# Beispiel Variable 1 COURSE
COURSE="Modul 122 - Abläufe mit Scriptsprachen automatisieren"  #??
# Beispiel Variable 2 SITE
SITE="https://moodle.bzz.ch/" #??

# Functions
function gethostdetails {
  printf "%-14s" "Hostname:" `hostname` #??
  printf "\n" #??
  printf "%-14s" "IP-Address:" `ip address | grep -v inet6 | grep inet | awk '{print $2}' | grep -v ^127` #??
  printf "\n" #??
}
