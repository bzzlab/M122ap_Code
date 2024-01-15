<div class="jumbotron">
    <h2>Standard I/O und Redirection (Umleitung)</h2><img class="icon" src="themen/img/terminal.png">
</div>

#### Inhaltsverzeichnis
<!-- MarkdownTOC -->

- [Standard-In, -Out und -Error](#standard-in--out-und--error)
- [Ausgabe umleiten](#ausgabe-umleiten)
- [Ausgabekanäle zusammenlegen / Ausgaben unterdrücken](#ausgabekan%C3%A4le-zusammenlegen--ausgaben-unterdr%C3%BCcken)
- [Eingabe umleiten](#eingabe-umleiten)
- [Pipeline](#pipeline)

<!-- /MarkdownTOC -->

<a id="standard-in--out-und--error"></a>
### Standard-In, -Out und -Error
Wenn sie mit der Shell arbeiten, gibt es unterschiedliche
Informationskanäle, welche sie verwenden können.

-   `stdin` - Standardeingabekanal (0) <br>
    (z.B. sie geben Zeichen über die Tastatur ein)

-   `stdout` - Standardausgabekanal (1) <br>
    (z.B. ein Programm zeigt den Inhalt eines Verzeichnisses am
    Bildschirm an)

-   `sterr` - Standardfehlerausgabekanal (2) <br>
    (z.B. ein Programm erzeugt einen Fehler und zeigt diesen am
    Bildschirm an)

Jeder der Kanäle kann über die jeweilige Nummer angesprochen werden
(0,1,2)

<figure>
<img class="large" src="themen/05/img/inouterr.png"/>
<figcaption>Abb-01: Standard-In, -Out und -Error</figcaption>
</figure>


<a id="ausgabe-umleiten"></a>
### Ausgabe umleiten

Die Ausgabe (stdout) eines Befehls kann umgeleitet werden mit `>` oder `>>` *<br>*
Beispiele:

-   `ls -la > liste.txt`

-   `./meinskript > outputofscript.txt`

-   `cat outputofscript.txt >> list.txt`

`>>` hängt Inhalt an bestehende Datei an, `>` überschreibt den Inhalt
komplett mit Neuem

<figure>
<img class="large" src="themen/05/img/ausuml.png"/>
<figcaption>Abb-02: Ausgabe umleiten (überschreiben oder anhängen)</figcaption>
</figure>


Die unterschiedlichen Kanäle können mit der Nummer spezifiziert werden:

-   `./meinskript 2> errorsofscript.txt` 
    (Leitet nur Fehlermeldungen in die Datei `errorsofscript.txt`)

-   `./meinskript 1> outputofscript.txt`<br>
    (Leitet den üblichen Output in die Datei `outputofscript.txt`)

-   `./meinzweitesskript 2>> errorsofscript.txt`<br>
    (Dasselbe geht auch im Anhängemodus)

-   `./skript 1> output.txt 2> error.txt`<br>
    (Unterschiedliche Umleitungen der Kanäle in einem Befehl)
    

Es gibt einen "Abfall Eimer": `> /dev/null`. Darin "verschwinden" alle Ausgaben.

<figure>
<img class="large" src="themen/05/img/uml2.png"/>
<figcaption>Abb-03: Nummern der Ausgabe-Kanäle</figcaption>
</figure>


<a id="ausgabekan%C3%A4le-zusammenlegen--ausgaben-unterdr%C3%BCcken"></a>
### Ausgabekanäle zusammenlegen / Ausgaben unterdrücken

Will man Standardausgabe und Standardfehlerausgabe über denselben Kanal ausgeben, kann man diese mit `2>&1` (Leitet `stderr` in `stdout`) koppeln:

`./skript > output.txt 2>&1` 

Hier ist die Reihenfolge von `> output.txt` und ` 2>&1` wichtig. Umgekehrt funktioniert es nicht wie erwünscht.

Will man einen Ausgabekanal *ausschalten*, kann dieser nach `/dev/null` (der Linux-Datenschredder) umgeleitet werden:

`./skript > output.txt 2>/dev/null`

(Unterdrückt die Ausgabe von Fehlern)


<a id="eingabe-umleiten"></a>
### Eingabe umleiten

Gleichwohl kann die Standardeingabe (oder Ein- und Ausgabe gleichzeitig) umgeleitet werden

-   `cat < meinFile.txt`

-   `cat < meinFile.txt > meinKopiertesFile.txt`

-   Manuelle Eingabe: `<<` fängt eine interaktive Eingabe ab, bis ein Schlüsselwort zu Terminierung eingegeben wird (zB. `fertig`). Anwendbungsfall: Um inteaktive Tools

<figure>
<img class="large" src="themen/05/img/einuml.png"/>
<figcaption>Abb-04: Eingabe umleiten</figcaption>
</figure>



```
sort << fertig 
Z
B
A
fertig
A
B
Z
```
**Praktischer Anwendungsfall**: Um inteaktive Tools (wie ftp oder ssh) mit programmierten Eingaben zu füttern!


<a id="pipeline"></a>

<a id="pipeline"></a>
### Pipeline

Das Konzept der Pipeline ist sehr effektiv beim Shellscripting! (Hint: Im Gegensatz zu Nordstream sollte es oft eingesetzt werden!!!) 

In einer Pipeline wird die Ausgabe (stdout) des vorhergehenden
Befehls als textueller Output an den nächsten weitergereicht:

1. Filtert alle Zeilen mit dem Begriff `hallo` aus der Datei `meinFile.txt`:
```
cat meinFile.txt | grep hallo
```
2. Filtert und sortiert alle Zeilen mit dem Begriff `hallo` aus der
Datei `meinFile.txt` (ohne Duplikate):
```
cat meinFile.txt | grep hallo | uniq | sort
```
3. liefert eine Liste aller Benutzernamen (Alles vor dem ersten
    Doppelpunkt in jeder Zeile in `/etc/passwd`), ausser dem Benutzer
    irc.
```
cat /etc/passwd | grep -v irc | cut -d ’:’ -f 1
```
    
<figure>
<img class="large" src="themen/05/img/pipeline.png"/>
<figcaption>Abb-05: Pipeline</figcaption>
</figure>