#!/bin/bash
:<<'TASK'
Report erstellen
Sie erhalten folgenden Beispiel-Input
```
122 "Abläufe mit Scripts autom." IM24a,b 08.00 12.00
165 "NoSQL-Datenbanken einsetz." IA24a,b 13.50 15.00
```

Aufgabenstellung
1. Erstellen Sie mit einem Bash-Script folgenden Report
```
ID  COURSE NAME                  LEVEL     von/bis    Zi
-----------------------------------------------------------
122 Abläufe_mit_Scripts_autom.   IM24a,b    8.00      12.00
165 NoSQL-Datenbanken_einsetz.   IA24a,b   13.50      15.00
```
Tipp: Verwenden Sie printf

TASK

#
printf "\n%-3s %s %22s %11s %8s\n" \ #??
  "ID" "COURSE NAME" "LEVEL" "von/bis" "Room" \#??
  "-----------------------------------------------------------" #??

printf "%3d %20s %7s %9.2f-%2.2f %4s\n" \ #??
122 "Abläufe mit Scripts autom." IA22a 12.10 15.35 H100 \ #??
165 "NoSQL-Datenbanken einsetz." IA22b 13.50 15.00 H134 #??
