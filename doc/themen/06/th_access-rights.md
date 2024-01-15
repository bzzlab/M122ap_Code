<div class="jumbotron">
    <h2>Zugriffsrechte</h2><img class="icon" src="themen/img/terminal.png">
</div>

#### Inhaltsverzeichnis
<!-- MarkdownTOC -->

- [Benutzerkreise](#benutzerkreise)
- [Ressourcen-Typen](#ressourcen-typen)
- [Kommandos](#kommandos)

<!-- /MarkdownTOC -->


<a id="benutzerkreise"></a>
### Benutzerkreise
Für die Zugriffsrechte werden drei "Benutzerkreise" für Dateien/Verzeichnisse unterschieden:
* Eigentümer (Owner)
* Gruppe (group)
* Andere (others)


<a id="ressourcen-typen"></a>
### Ressourcen-Typen
Der erste Eintrag bestimmt den Typen der Ressource. Es gibt 
* normale Dateien (`-`), 
* Verzeichnisse (`d`), 
* Devices files (`b` und `c`), 
* und noch ein paar Typen mehr.

Die Zeichen (Bits) für die Zugriffe sind: `r` - Read, `w` - Write, `x` - eXecute.


<figure>
<img class="large" src="themen/06/img/access-rights-1.png"/>
<figcaption>Abb-01: Zugriffsrechte auf einem Unix-System</figcaption>
</figure>


Drei Zeichengruppen zu je drei Zeichen kennzeichnen die Zugriffsrechte für die Datei bzw. das Verzeichnis. Hat der Benutzer/Gruppe/andere ein Recht, so wird der Buchstabe dafür angezeigt; ansonsten wird ein - dafür angezeigt.

#### Beispiel
Eine Auflistung aller Ressourcen mit den entsprechenden Rechten erzielen Sie mit `ls -alR`, welche folgende beispielhafte Ausgabe erzeugt:

```
$ ls -alR                                                   
.:                                                          
total 16                                                    
drwxr-xr-x 1 info 197617 0 Dec 22 20:14 ./                  
drwxr-xr-x 1 info 197617 0 Dec  9 21:19 ../                 
drwxr-xr-x 1 info 197617 0 Dec 22 20:36 flog/               
                                                            
./flog:                                                     
total 365                                                   
drwxr-xr-x 1 info 197617      0 Dec 22 20:36 ./             
drwxr-xr-x 1 info 197617      0 Dec 22 20:14 ../            
-rw-r--r-- 1 info 197617    120 Dec 22 20:14 .dockerignore  
drwxr-xr-x 1 info 197617      0 Dec 22 20:14 .git/          
-rw-r--r-- 1 info 197617     81 Dec 22 20:14 .gitignore     
-rw-r--r-- 1 info 197617    875 Dec 22 20:14 .goreleaser.yml
-rw-r--r-- 1 info 197617    173 Dec 22 20:14 .travis.yml    

usw.
```



*Erklärung zu den Anzeigespalten:*

1.  Rechte für die entsprechende Datei oder das Verzeichnis
2.  Anzahl Referenzen auf das Verzeichnis oder die Datei. Normalerweise 1 für Datei, 2+ für Anzahl Verzeichnis-Einträge im Verzeichnis (inkl. . und ..)
3.  Benutzer, der die Datei besitzt (erstellt hat)
4.  Benutzergruppe, die Zugriff auf die Datei hat
5.  Dateigrösse in Bytes
6.  Letzte Änderungszeit
7.  Name der Datei oder des Verzeichnisses  (. = aktuelles Verzeichnis, .. = Übergeordnetes Verzeichnis)


<a id="kommandos"></a>
### Kommandos
Verschaffen Sie sich hier einen weiteren Überblick:
[Rechte](https://wiki.ubuntuusers.de/Rechte/)

* Der Befehl `chown` wechselt den Eigentümer einer Datei oder eines Verzichnisses.
* Der Befehl `chmod` wechselt die Zugriffsrechte einer Datei oder eines Verzichnisses.

<figure>
<img class="large" src="themen/06/img/access-rights-2.png"/>
<figcaption>Abb-02: Numerische Representation der Zugriffsrechte auf einem Unix-System</figcaption>
</figure>
