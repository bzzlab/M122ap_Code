### Aufgabe 1: Test-Dateien mit Suffix anlegen
#### Ausgangslage
Die Erstellung von mehreren Test-Dateien kann mit Brace Expansion wesentlich
vereinfacht werden.

#### Aufgabenstellung
1. Erstellen Sie ein Verzeichnis data im HOME-Verzeichnis. 
2. Legen Sie im Verzeichnis data die leeren Dateien file001.dat bis file100.dat. 
3. Löschen Sie alle Dateien, welche eine 1 in der mittleren Position des dreistelligen Suffix haben. 
4. Zählen Sie die vorhandenen Dateien.

### Aufgabe 2: Test-Dateien mit Präfix anlegen
#### Ausgangslage
Die Erstellung von mehreren Test-Dateien kann mit Brace Expansion wesentlich 
vereinfacht werden.

#### Aufgabenstellung
1. Erstellen Sie ein Verzeichnis tmp im HOME-Verzeichnis. 
2. Legen Sie im Verzeichnis tmp leere Temporär-Dateien, 
die folgende Anforderungen erfüllen: 
   - Das Präfix ist eine Kombination aus einem Buchstaben und einer Zahl, es ist 2-Stellig
   - Nach dem Präfix folgt ein Underscore und der App-Datei.
   - Es werden drei App-Dateien unterschieden: appX, appY, appZ
   - Die Extension ist .tmp
3. Wenn Sie gemäss Punkt 2 vorgegangen sind, dann sollten Sie 345 temporäre Dateien erzeugt haben.
