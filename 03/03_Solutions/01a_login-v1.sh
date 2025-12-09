#!/bin/bash
:<<'TASK'
Programmieren Sie ein Script mit einer Authentifizierung
(Benutzername, Passwort) erstellen. Beachten Sie dazu
den Pseudocode (s.unten) und die Verwendung der folgenden String-Operatoren:
   String Operators
    =  Equal to
   !=  Not equal to
   -z  check if string is null (length = 0)
   -n  check if string is not null
   Programm mit exit n verlassen, wobei n ein Integer ist

Pseudocode:
START
benutzernamen einlesen
falls benutzername null ist
    dann Fehler-Meldung ausgeben
    Programm mit code 1 verlassen
    sonst
    falls benutzername nicht 'ubuntu' ist
        dann Fehler-Meldung ausgeben
        Programm mit code 2 verlassen
passwort einlesen
falls passwort null ist
    dann Fehler-Meldung ausgeben
    Programm mit code 3 verlassen
    sonst
    falls passwort 'm122' ist
        dann Erfolgsmeldung ausgeben
        sonst
        Fehler-Meldung ausgeben
        Programm mit code 4 verlassen
ENDE
```

TASK
read -p "Username: " username  #??

if [[ -z ${username} ]]; then  #??
  echo "Username is null. Exit!"  #??
  exit 1  #??
fi  #??
if [[ ${username} != "ubuntu" ]]; then  #??
  echo "Username is not correct. Exit!"  #??
  exit 2  #??
fi  #??

read -p "Password: " password #??

if [[ -z ${password} ]]; then  #??
  echo "Password is null. Exit!"  #??
  exit 3  #??
fi  #??
if [[ ${password} != "m122" ]]; then  #??
  echo "Password is not correct. Exit!"  #??
  exit 4  #??
fi  #??

echo "Welcome ${username}. You're now logged in."
