<div class="jumbotron"><img class="icon" src="themen/img/terminal.png">
    <h2>Variablen in Bash</h2>
</div>


### Einleitung
Shellvariablen speichern zugewiesene Wert. Eine Variable kann eine Zahl enthalten, ein Zeichen, oder einen String. Bei Variablennamen wird auf Groß- und Kleinschreibung geachtet, sie können aus Buchstaben und einem Unterstrich <code>\_</code> bestehen.

Wertzuweisungen werden mit einem '=' Zeichen programmiert und es sind keine Leerzeichen um das '=' erlaubt:
```
    PRICE_PER_APPLE=5
    MyFirstLetters=ABC
    greeting='Hello        world!'
```

Ein Backslash "\\" wird benutzt, um spezielle Zeichen darzustellen:
```
    PRICE_PER_APPLE=5
    echo "Der Preis eines Apfels ist: \$ $PRICE_PER_APPLE"
```

Man kann die Variable mit `${}` umgeben, um Zweideutigkeiten zu verhindern:
```
    MyFirstLetters=ABC
    echo "Die ersten 10 Buchstaben des Alphabets sind: ${MyFirstLetters}DEFGHIJ"
```

Eine Variable mit `""` zu umgeben, sorgt dafür, dass die Leerzeichen erhalten bleiben.
```   
    greeting='Hello        world!'
    echo $greeting "Jetzt mit Leerzeichen: $greeting"
```

Variablen können die Ausgabe eines Befehls zugewiesen werden. Dies nennt man Substitution. Substitution erreicht man, indem man den Befehl mit <code>$()</code> oder mit den sog. Backquotes <code>\`\`</code> umgibt.
```
    FILELIST=`ls`
    FileWithTimeStamp=/tmp/my-dir/file_$(/bin/date +%Y-%m-%d).txt
```

In anderen Worten: Beim Ausführen des Skripts wird der Befehl innerhalb der <code>$()</code> Klammern ausgeführt und die Ausgabe abgegriffen.


### System-Variablen
Folgend die wichtigsten, automatisch verwalteten Variablen der Bash:

- `$LOGNAME`    Login-Name des Benutzers
- `$0` Der Name des aufgerufenen Shellscripts
- `$1` - `$9`, `${10}`, ... ,  `$*` Parameter des aufgerufenen Shellscripts
- `$#` Anzahl Parameter des aufgerufenen Shellscripts
- `$$` Die Prozessnummer des aufgerufenen Shellscripts
- `$?` Der Beendigungsstatus eines Shellscripts
- `$!` Die Prozessnummer des zuletzt gestarteten Hintergrundprozesses
- `$PWD`    Aktuelles Arbeitsverzeichnis
- `$OLDPWD`     Der Wert ist das zuvor besuchte Arbeitsverzeichnis; wird vom Kommando cd gesetzt.
- `$HOME`   Heimverzeichnis für den Benutzer; Standardwert für cd
- `$UID`    Die User-ID des Anwenders. Diese Kennung ist in der Datei /etc/passwd dem Benutzernamen zugeordnet. 
- `$PATH`   Suchpfad für die Kommandos (Programme); meistens handelt es sich um eine durch Doppelpunkte getrennte Liste von Verzeichnissen, in denen nach einem Kommando gesucht wird, das ohne Pfadangabe aufgerufen wurde; Standardwerte: PATH=:/bin:/usr/bin
- `$CDPATH`     Suchpfad für das cd-Kommando
- `$SHELL`   Zeigt die aktuelle Shell mit dem Pfad an 
- `$RANDOM`     Pseudo-Zufallszahl zwischen 0 bis 32767
- `$REPLY`  Bei Menüs (select) enthält REPLY die ausgewählte Nummer.
- `$SECONDS`    Enthält die Anzahl von Sekunden, die seit dem Start (Login) der aktuellen Shell vergangen ist.
- `$PROMPT_COMMAND`     Hier kann ein Kommando angegeben werden, das vor jeder Eingabeaufforderung automatisch ausgeführt wird.
- `$PS1`    Primärer Prompt; Prompt zur Eingabe von Befehlen.
- `$TZ`     Legt die Zeitzone fest (hierzulande MET = Middle European Time) 