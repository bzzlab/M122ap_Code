### Aufgabe 1: Report erstellen
#### Ausgangslage
Sie sollen ein Script mit einer Authentifizierung (Benutzername, Passwort) erstellen.

#### Aufgabestellung
Erstellen Sie eine Authentifizierung gemäss Pseudocode (s.unten)
und mit folgenden String-Operatoren:
```
# String Operators
#  =  Equal to
# !=  Not equal to
# -z  check if string is null (length = 0)
# -n  check if string is not null
# Programm mit exit n verlassen, wobei n ein Integer ist
```
Pseudocode:
```
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


### Aufgabe 2: Refactoring
#### Ausgangslage
Sie haben die Aufgabe 1 erstellt.

#### Aufgabestellung
Verbessern Sie die Umsetzung von Aufgabe mit logischen Operatoren.
Dazu stehen Ihnen zusätzlich folgenden logische Operatoren zur Verfügung:
```
# Logical Operators
# && - Logical AND
# || - Logical OR
# !  - Logical NOT
```
