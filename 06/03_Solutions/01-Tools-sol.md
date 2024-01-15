### Aufgabe 1: Daten filtern
#### Ausgangslage
Das Tool ```grep``` ist ein nützlicher Befehl, um Daten nach verschiedenen
Kriterien zu filtern. In der folgenden Aufgabenstellung werden Sie dieses
Tool näher kennenlernen.

#### Aufgabenstellung
1. Lesen Sie den [Artikel](https://ostechnix.com/the-grep-command-tutorial-with-examples-for-beginners/) zum
   Kommando ```grep```.
2. Durchsuchen Sie die Datei `random.txt` mit `grep` nach folgenden Mustern (benutzen Sie die
   Option `--color=auto`):
   - Alle Zeilen, welche `obelix` enthalten
   - Alle Zeilen, welche eine `2` enthalten
   - Alle Zeilen, welche ein `e` enthalten
   - Alle Zeilen, welche **nicht** `gamma` enthalten
   - Alle Zeilen, welche `1`, `2` oder `3` enthalten (benutzen Sie `-E` und eine regex)

#### Lösung
```
cat random.txt | grep obelix
cat random.txt | grep 2
cat random.txt | grep e
cat random.txt | grep -v gamma
cat random.txt | grep -E "1|2|3"
```

### Aufgabe 2: Daten ausschneiden (Repetition)
#### Ausgangslage
Das Tool ```cut``` ist ein nützlicher Befehl, um Strings an bestimmten Stellen zu schneiden. 
In der folgenden Aufgabenstellung werden Sie dieses Tool kennenlernen/repetieren.

#### Aufgabenstellung
1. Lesen Sie den [Artikel](https://shapeshed.com/unix-cut/) über das Kommando ```cut```, damit Sie mit
   der Option ```-d``` den Delemiter angeben, an welcher Stelle im Text
   ```cut``` schneiden soll.
2. Wenden Sie `cut` an der Datei `random.txt` an, um nur folgende Begriffe anzuzeigen:
   - Alle Begriffe vor dem ersten `:-Zeichen`
   - Alle Begriffe zwischen den beiden `:-Zeichen`
   - Alle Begriffe rechts des letzten `:-Zeichen`

#### Lösung
```
cat random.txt | cut -d':' -f1
cat random.txt | cut -d':' -f2
cat random.txt | cut -d':' -f3
```

### Aufgabe 3: Daten übersetzen
#### Ausgangslage
Die Tools `tr` respektive `sed` sind nützliche Befehle, um Strings zu übersetzen.
In der folgenden Aufgabenstellung werden Sie diese Tools anwenden.

#### Aufgabenstellung
1. Lesen Sie den [Artikel](https://unix.stackexchange.com/questions/593035/how-to-use-tr-to-replace-multiple-sets) 
zu den Kommandos `tr` respektive `sed`.
2. Übersetzten Sie den Text `hirnstudie.txt` mit eines der beiden Kommandos in 
lesbarer Form.

#### Lösung
```
cat hirnstudie.txt | sed 's/1/I/g;s/3/E/g;s/5/S/g;s/7/T/g;s/4/A/g;s/0/O/g;'
```
oder kürzer:
```
 cat hirnstudie.txt | sed 'y/013457/OIEAST/'
```

