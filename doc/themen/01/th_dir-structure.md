<div class="jumbotron"><img class="icon" src="themen/img/terminal.png">
    <h2>Verzeichnisstruktur von Linux</h2>
</div>

#### Inhaltsverzeichnis
<!-- MarkdownTOC -->

- [Die Linux Verzeichnishierarchie](#die-linux-verzeichnishierarchie)
- [Wichtige Verzeichnisse](#wichtige-verzeichnisse)

<!-- /MarkdownTOC -->


<a id="die-linux-verzeichnishierarchie"></a>
### Die Linux Verzeichnishierarchie
Linux kommt, im Gegensatz zu Windows nicht mit verschiedenen Datenträgern (C:/, D:/ usw.) daher, sondern ist in viele Ordner und Unterordner strukturiert. Der Linux-Verzeichnisbaum ist dabei keineswegs willkürlich gewählt, sondern bietet eine durchdachte Struktur. Jedoch sind die Namen der Ordner nicht wirklich sprechend, da sie häufig (in der Softwareentwicklung übliche) Abkürzungen verwenden. Daher wird im Folgenden die Bedeutungen der Hauptverzeichnisse und die wichtigsten Unterverzeichnisse, die es z.B. unter Linux (Ubuntu) gibt, erläutert.

#### Eigenschaften
* Der Verzeichnisbaum beginnt bei Linux beim Verzeichnis `/`
    (Vergleichbar mit `C:\` unter Windows)
* Das Verzeichnis `/`wird auch Wurzel- oder Rootverzeichnis genannt
* Verzeichnisse eine oder mehrere Hierarchiestufen weiter unten werden
    durch `/`-Zeichen getrennt
* Beispiele:
```
/etc/
/usr/local/nginx
/usr/bin/
/home/user1
```

<a id="wichtige-verzeichnisse"></a>
### Wichtige Verzeichnisse      
* <code>/</code> - Das Wurzelverzeichnis oder Stammverzeichnis genannte Verzeichnis ist die höchste Ebene der Verzeichnisstruktur. In diesem befinden sich alle Verzeichnisstrukturen des Betriebssystems einschließlich weiterer Speichermedien.
* <code>/bin</code> - binaries (dt. Binärdateien/Programme): Die wichtigsten Kommandos (Programme) die von Betriebssystem gebraucht werden wie cp, echo, mkdir oder rm befinden sich in diesem Verzeichnis. Sie haben alle gemeinsam, dass sie Binärdateien sind und von allen Benutzern ausgeführt werden dürfen. (/sbin nur fürs System/root)
* <code>/dev</code> - devices (dt. Geräte): Hier befinden sich Gerätedateien zur Ansteuerung von Hardware wie Festplatten, RAM, Bildschirm oder auch der Maus. Die Dateien stellen die Existenz der Treiber eines Gerätes dar und können auch leere Dateihülsen sein. Andere bieten konkrete Funktionalität an. Für jedes Hardwareteil gibt es vorsorglich einen solchen Eintrittspunkt, auch wenn dieser nicht zwingend benötigt wird.
* <code>/etc</code> -  et cetera (dt. "alles übrige"): Dieser Ordner beinhaltet die meisten systemweit gültigen Konfigurationsdateien und stellt damit den zentralen Anlaufpunkt zum Verändern von Einstellungen dar.
* <code>/home</code> - In diesem Verzeichnis befinden sich standardmäßig die Heimatverzeichnisse der Nutzer. In diesen Ordnern können Benutzer ihre persönlichen Dateien und je nach Anwendung auch benutzerspezifische Konfigurationen ablegen.
* <code>/lib</code> - libraries (dt. Bibliotheken): Hier sind Funktionsbibliotheken des Systems wieder zu finden. Dies sind Bibliotheken, die bei dem Systemstart benötigt werden und, wenn der Kernel modular aufgebaut ist, die entsprechenden Kernel-Module.
* <code>/opt - optional</code>: Hier werden alle Programme abgelegt, die nicht im Paketformat vorliegen (folglich händisch installiert und nicht durch Paketmanager verwaltet), wie auch viele kommerzielle Softwarepakete.
* <code>/run</code> - Dieser Ordner beherbergt Dateien von laufenden Prozessen. In diesem Ordner finden sich die meisten PID-Files (Process identifier).
* <code>/sbin</code> - system binaries (dt. Systemprogramme): In diesem Ordner findet man Programm Binärdateien wieder, die Root-Rechte zum Ausführen benötigen.
* <code>/tmp</code> - temporary (temporär): In diesem Verzeichnis können temporäre Daten abgelegt werden. Zu beachten ist, dass dieses Verzeichnis nach einem Neustart in der Regel bereinigt wird.
* <code>/usr</code> - unix system resources (dt. UNIX Systemressourcen, NICHT USER) Programme die nicht direkt für das Betriebssytem gebraucht werden, sondern eher für die Benutzer, sind in diesem Ordner zu finden. Dabei enthält dieser Ordner weitere Unterordner, die sich thematisch gliedern.
* <code>/usr/local</code> - Als wichtiges Unterverzeichnis von /usr ist dieses Verzeichnis zu nennen. In diesem können Benutzer ihre eigenen Programme installieren. Das Verzeichnis ist wie /usr thematisch in Unterordner unterteilt.
* <code>/var</code> - variable (dt. variabel): In diesem Ordner sind variable Daten wie Logfiles, Mails oder auch Druckerspooler verortet. 
* <code>/var/www/html</code> - Web-Server Dateien: Dieser Ordner ist nicht standardmäßig in der Debian Distribution angelegt, sollte aber dennoch Erwähnung finden. Er gilt als Standardordner für die Inhalte eines Webservers (z.B. Apache2 für PHP Scripts und Co.).