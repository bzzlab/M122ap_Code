#!/bin/bash
# shellcheck disable=SC2188
<<'TASK'
Aufgabe: Test-Benutzer AWS EC2 Instanz anlegen
Ausgangslage
Die Erstellung von mehreren Test-Linux-Benutzern kann automatisiert werden, statt sie manuell anzulegen.
Für das Passwort (als Einweg-Hashcode) benötigen Sie das Paket `openssl`.

Aufgabenstellung
1. Es sollen die Testuser user1 bis userN (N=maximal Users) erstellt werden.
2. Das Home-Verzeichnis ist jeweils /home/user1 bis /home/userN sein.
3. Als Passwort kann der jeweilige Benutzername dienen. Folgende Kommando-Folge führt zum Ziel.
z.B. für user1: `echo user1 | openssl passwd -1 -stdin`. Installieren Sie dazu das Paket `openssl`.
4. bash soll die Standard-Shell sein.
5. Alle erstellen Benutzer sollen in der Gruppe users hinzugefügt werden
6. Testen Sie Ihr Script in Ihrer AWS EC2 Instanz

Tipp: Mit useradd --help können Sie die entsprechenden Optionen für die Aufgabenstellung nachlesen.

Um openssl zu installieren in AWS EC2 Instanz:
apt-get update && apt-get install -y openssl && apt-get clean all
TASK

# if no argument has been provided
#??
  # then show an error message and exit the script with error code 1
#??
#??
#??
#??

# Number of users to create as a parameter
#??
# set prefix
#??
#??
#??
#??
#??
#??
#??
#??
