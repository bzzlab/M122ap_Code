#!/bin/bash
# shellcheck disable=SC2188
<<'TASK'
Aufgabe 3: Test-Benutzer löschen
Ausgangslage
Nachdem die Benutzer erstellt worden sind, soll ein Bash-Script
diese löschen.

Aufgabenstellung
1. Löschen Sie die erstellten Benutzer user1, user2 usw. auf Basis des Prefix 'user'
2. Die Anzahl zu löschender Benutzer soll anhand dieses Bash-Script-Ausschnitts
flexibel gehalten werden:
  # Count how many users start with that prefix
  COUNT=$(getent passwd | awk -F: -v prefix="user" '$1 ~ "^"prefix {count++} END {print count+0}')
  echo "Number of users with prefix 'user': $COUNT"
3. Löschen Sie die erstellten Home-Verzeichnisse der Benutzer.
4. Testen Sie Ihr Script in Ihrer AWS EC2 Instanz

TASK
#??
# Count how many users start with that prefix
#??
#??
#??
#??
#??
#??
#??
#??
