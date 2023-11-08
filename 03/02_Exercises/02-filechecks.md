### Aufgabe 1: Dateien überprüfen
#### Ausgangslage
Mit den entsprechenden Operatoren können über die Bash-Shell Dateien und Verzeichnisse
überprüft werden. Lesen Sie zu diesem Zweck die wichtigsten ```File test``` Operatoren im Artikel https://tldp.org/LDP/abs/html/fto.html nach.

#### Aufgabestellung
1. Kopieren Sie die Dateien ```02b_myfile.txt```, ```02b_passwd.txt"``` auf Ihrem Ubuntu Container im Heim-Verzeichnis (z.B. ```/home/dev1```).  
2. Erstellen Sie ein Shellscript, welche geeignete ```File test``` Operatoren verwendet und folgende Bedingungen überprüft: Prüfen Sie, ...
   1. ob die reguläre Datei ```/etc/passwd``` existiert.
   2. ob die Datei ```02b_myfile.txt``` leer ist.
   3. ob ```/etc/``` ein Verzeichnis ist.
   4. ob Sie Schreibrechte auf die Datei ```02b_passwd.txt"``` haben.
   5. ob Sie Besitzer von ```/etc/passwd``` sind.
   6. ob Sie in der Gruppe von ```/etc/passwd``` sind.
   7. ob ```/etc/passwd``` neuer (Datum) als ```02b_passwd.txt"``` ist.
   8. ob ```/etc/passwd``` älter (Datum) als ```02b_passwd.txt"``` ist.

