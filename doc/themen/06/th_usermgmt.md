<div class="jumbotron">
    <h2>Benutzerverwaltung</h2><img class="icon" src="themen/img/terminal.png">
</div>

#### Inhaltsverzeichnis
<!-- MarkdownTOC -->

- [Überblick](#%C3%9Cberblick)
- [Kommandos für Informationen](#kommandos-f%C3%BCr-informationen)
- [Kommandos für die Benutzer-Verwaltung](#kommandos-f%C3%BCr-die-benutzer-verwaltung)

<!-- /MarkdownTOC -->


<a id="kommandos-f%C3%BCr-informationen"></a>

<a id="%C3%9Cberblick"></a>
### Überblick
Verschaffen Sie sich hier einen Überblick über Benutzer und Gruppen:
[Benutzer und Gruppen](https://wiki.ubuntuusers.de/Benutzer_und_Gruppen/)

<a id="kommandos-f%C3%BCr-informationen"></a>
### Kommandos für Informationen
Der Befehl ...

* `whoami` zeigt den aktuellen Benutzernamen an
* `who` zeigt alle am System angemeldeten Benutzer an
* `groups` zeigt die Gruppen des aktuellen Benutzernamen an
* `id` zeigt die Nutzerid und Gruppen des aktuellen Benutzers an
* `su` wechselt den aktuellen Benutzer <br>
    Syntax: `su - <User>` <br>
    ( `-` sorgt dafür, dass wie beim Login alle Login-Skripte (.bashrc, .profile,...) durchlaufen werden und dass ins Heimverzeichnis des neuen Users gewechselt wird. Ohne - wird nur die User-Id gewechselt.)

<a id="kommandos-f%C3%BCr-die-benutzer-verwaltung"></a>
### Kommandos für die Benutzer-Verwaltung

Der Befehl ...

* `useradd` fügt einen neuen Benutzer hinzu <br>
    Syntax: `useradd <User>`

* `userdel` löscht einen bestehenden Benutzer <br>
    Syntax: `userdel <User>`

* `passwd` kann (unter anderem) das Passwort wechseln <br>
    Syntax: `passwd <User>`

* `logout` loggt den aktuellen Benutzer vom System aus
    (ebenso `exit`)


