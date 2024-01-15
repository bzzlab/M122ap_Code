<div class="jumbotron"><img class="icon" src="themen/img/terminal.png">
    <h2>Shell-Commands und Shell-Scripting</h2>
</div>


#### Inhaltsverzeichnis

<!-- MarkdownTOC levels=3 -->

- [Command Line](#command-line)
- [Help zu Kommandos](#help-zu-kommandos)
- [Shell-Scripting Basics](#shell-scripting-basics)
- [Shell-Scripting Beispiele](#shell-scripting-beispiele)

<!-- /MarkdownTOC -->


<a id="command-line"></a>
### Command Line
* Das CL-Tool (Terminal) ermöglicht es die Befehle der Bash abzusetzten. Dabei gibt es einige &#8594;&nbsp;<a href="https://www.howtogeek.com/howto/ubuntu/keyboard-shortcuts-for-bash-command-shell-for-ubuntu-debian-suse-redhat-linux-etc/" target="tab">Short-Cuts</a>.
* Der Standard-Prompt (Eingabeaufforderung ) bildet sich nach dem Schema und kann geändert werden (`$PS1`)
* Das Tildezeichen `~` ist ein Kürzel für das Heimatverzeichnis (Home) des aktuellen Benutzers
* Die Heimatverzeichnisse befinden sich i.d.R. unter `/home/<benutzername>`.  <br> 
  Einzig Ausnahme: Das Heimatverzeichnis des Administratorusers (`root`) befindet sich unter `/root/`  
* Das Semikolon `;` trennt einzelne Befehle in einer Zeile voneinander (Aufreihung der Befehle: Sequenz)
* Das Pipe-Zeichen  (AltGr-7) `|` verkettet einzelne Befehle in der Zeile (Piping)
* Ein Hashtag `#` leitet einen Kommentar ein. 
* Mit einem `\` am Ende einer Zeile lässt sich eine Befehlszeile auf der nächsten Zeile weiter fahren.
* Das  `\` ist auch das sog. ESC-Zeichen, welches dem nachfolgenden Zeichen seine spezielle Bedeutung enthebt oder eine gibt: `\;`, `'\t'` oder `\\`. 
* Mit einem `&` am Ende eines Befehls führt den Befehl im Hintergrund aus. Konsole, bzw. Script fährt weiter ohne zu warten.
    
<a id="help-zu-kommandos"></a>
### Help zu Kommandos
* Der Befehl `man` öffnet sie Hilfeseiten (manual) eines Befehls <br> Syntax: `man <Befehlsname>`
* Der Befehl `apropos` durchsucht alle Hilfeseiten nach einemn Stichwort <br> Syntax: `apropos <Stichwort>`
* Der Befehl `which` findet den Ort eines installierten Programmes <br> Syntax: `which <Befehl>`


<a id="shell-scripting-basics"></a>
### Shell-Scripting Basics
Über die **Bash** Shell (Bourne Again Shell) als Shell Interpreter können nicht nur einzelne Kommandos, sondern ganze Shell-Scripts zur Automatisierung von Abläufen ausgeführt werden.
Um das Skript auszuführen, müssen die Ausführungsberechtigung (mit `chmod +x filename`) gesetzt werden.

Die erste Zeile eines Shellskripts beginnt mit einem "sha-bang" (#!), welcher nicht als Kommentar eingelesen wird, gefolgt von dem Pfad zum Shell Interpreter. Dieser Pfad sage dem Betriebssystem, dass diese Datei eine Liste von Befehlen ist, die dem angegebenen Interpreter gefüttert werden sollen. 

Bei falscher Pfad-Angabe nach dem "sha-bang" erscheint eine Fehlermeldung (zum Beispiel "Befehl nicht gefunden"). Es ist gang und gäbe ein Shellskript mit ".sh" enden zu lassen. Übrigens: Den korrekten Pfad kann mit <code>which bash</code> überprüft werden.

Die erste Zeile könnte so lauten:
```
#!/bin/bash**
# 
# ...
```

<a id="shell-scripting-beispiele"></a>
### Shell-Scripting Beispiele
Siehe dazu im Verzeichnis <code>01/01_Intro</code> im Repo.
