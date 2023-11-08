### Aufgabe 1: Datei einlesen und durchsuchen
#### Ausgangslage
Es gibt mehrere Varianten den Inhalt einer Datei einzulesen. 
Eine davon ist mit dem while-Loop. Dabei wird beispielsweise das Pipe-Symbol ("|") 
oder eine Redirection des Outputs in unserem Fall mit dem Klein-Als-Symbol ("<") verwendet.

Nachfolgend der Pseudo-Code für beide Varianten mit dem while-Loop:
Pipe-Symbol ("|"):
```
cat fileX | while read x; do
    do something with $x
done
```
Klein-Als-Symbol ("<")
```
while read x; do
    do something with $x
done < fileX
```

#### Aufgabenstellung
1. Durchsuchen Sie die Datei animal.txt nach dem Wort "tiger". Wird es gefunden, dann geben
Sie eine sinnvolle Meldung aus. Verwenden Sie dafür das Pipe-Symbol.
2. Verwenden Sie analog zur Aufgabe 1 das Klein-Als-Symbol ("<").
