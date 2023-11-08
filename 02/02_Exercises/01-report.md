### Aufgabe 1: Report erstellen
#### Ausgangslage
Sie erhalten folgenden Beispiel-Input
```
122 "Abläufe mit Scripts autom." IA21a,b 08.00 12.00
165 "NoSQL-Datenbanken einsetz." IA22a,b 13.50 15.00
```

#### Aufgabenstellung
1. Erstellen Sie mit einem Bash-Script folgenden Report
```
ID  COURSE NAME                  LEVEL     von/bis    Zi
-----------------------------------------------------------
122 Abläufe_mit_Scripts_autom.   IA21a,b    8.00      12.00
165 NoSQL-Datenbanken_einsetz.   IA22a,b   13.50      15.00
```
Tipp: Verwenden Sie printf
