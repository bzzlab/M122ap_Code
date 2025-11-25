#!/bin/bash
:<<'TASK'
Erstellen Sie eine Library mit zwei Variablen
(Benennung und Inhalt nach Ihrer Wahl) und einer Funktion.
Die Funktion gibt Hostnamen und die IP-Adresse
Ihrer AWS EC2 Instanz ermittelt und ausgibt.

Die Library wird durch die Datei 05_test.sh verwendet.
Voraussetzung für diese Aufgabe ist 03_ip.sh

Tipp 1: Kommando 'hostname' gibt den Hostnamen zurück
Tipp 2: Die Kommandofolge (getrennt durch das Pipe-Zeichen '|') ist
ip address | grep -v inet6 | grep inet | awk '{print $2}' | grep -v ^127
TASK
clear
# Beispiel Variable 1 COURSE
#??
# Beispiel Variable 2 SITE
#??

# Functions
function gethostdetails {
#??
#??
#??
#??
}
