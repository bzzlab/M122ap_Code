#!/bin/bash
:<<'TASK'
Programmieren ein Shell-Script, welcher einen Report ausschliessliche über Benutzer-Accounts in Ihrer AWS EC2 Instanz erstellt. Die User-Accounts sind in derselben ```/etc/passwd``` gespeichert, wie die Service-Accounts, welche keinem Linux-Benutzer gehören, sondern hauptsächlich für Dienstleistungsprozesse verwendet werden. Die Service-Accounts sind nicht Bestandteil des Reports.

Tipp: Befindet sich in der Zeile x der Eintrag
```/usr/sbin/nologin``` oder
ist die Benutzer-Shell leer oder
ist die Benutzer-Id gleich der Benutzer-Shell
dann handelt es sich um einen Service-Account.

Ferner befinden Sie in der /etc/passwd an den verschiedenen Positionen - getrennt durch ':' - verschiedene Informationen:
```
# Position - Info:
# 1 - user id
# 6 - Home dir
# 7 - shell
```
Der Report soll folgenden Output erzeugen:
```
$ ./01a-passwd.sh
root -- /bin/bash -- /root
sync -- /bin/sync -- /bin
dev1 -- /bin/bash -- /home/dev1
dev2 -- /bin/bash -- /home/dev2
```

Aufgabenstellung
1. Lesen Sie den Artikel(https://shapeshed.com/unix-cut/) über das Kommando ```cut```,
damit Sie mit der Option ```-d``` den Delimiter angeben, an welcher Stelle im Text
```cut``` schneiden soll.
2. Verwenden Sie im while-Loop das Pipe-Symbol ("|"):
```
cat fileX | while read x; do
    do something with $x
done
```
3. Kopieren und testen Sie das Shellscript in Ihrer AWS EC2 Instanz (Heim-Verzeichnis).
```
TASK
file_passwd="/etc/passwd"
#??
#??
#??
#??
#??
#??
#??
#??
#??
#??
