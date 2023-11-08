### Aufgabe 1: Round-Robin-Logfiles
#### Ausgangslage
Es kann vorkommen, dass Logfiles unkontrolliert an Speicher benötigen und diese nicht 
mehr gelesen oder verwendet werden, weil sie zu gross geworden sind. Um dies zu vermeiden,
soll ein Script erstellt werden, welches ab einer bestimmten Speichergrösse das Logfile 
mit einem Zeitstempel versieht und ein neues, leeres Logfile erstellt.

#### Aufgabenstellung
1. Das Script prüft, ob eine Log-Datei (z.B. app-error.log) als Argument mitgegeben wurde.
   Wenn nicht, erscheint eine entsprechende Fehlermeldung.
2. Hat die Log-Datei eine bestimmte Grösse erreicht, dann wird der Extension einen Zeitstempel angefügt
   und eine leere, gleichnamige Log-Datei erstellt.
3. Die Grösse einer Datei kann mit folgender Kommando-Folge (Kommandos getrennt durch Pipe-Symbole)
   ermittelt werden:
```
du -b file | tr -s '\t' ' ' | cut -d' ' -f1
```
Tipp 1: Wenn Sie genau wissen wollen, was die Kommando-Folge tut, dann testen Sie diese anhand einer
Datei und indem Sie die Kommando-Abschnitte sukzessive hinzufügen, z.B.
```
du -b file
du -b file | tr -s '\t' ' '
du -b file | tr -s '\t' ' ' | cut -d' ' -f1
```
Tipp 2: Um den Zuwachs einer Datei zu simulieren, können Sie Dummy-Text mit cat in die Datei umleiten,
z.B.
```
echo "asdfasdfasdfasdfasdfasdafasdfasdfasdfasdfasdfasdfasdfasdfasdfasdfasdfasdfasdf" > ./app-error.log
```
