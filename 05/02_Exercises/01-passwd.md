### Aufgabe 1: Datei einlesen und durchsuchen
#### Ausgangslage
Es soll ein Report den aktuellen User-Accounts erstellt werden. Die User-Accounts
sind in der ```/etc/passwd``` unter anderem gespeichert. In dieser Datei
befindet sich auch Service-Accounts, welche keinem Linux-Benutzer gehören,
sondern hauptsächlich für Dienstleistungsprozesse verwendet.

Befindet sich in der Zeile x der Eintrag 
```/usr/sbin/nologin``` oder 
```/bin/false```, 
dann handelt es sich um einen Service-Account.

Ferner befinden Sie in der /etc/passwd an den verschiedenen Positionen - getrennt durch ':' -
verschiedene Informationen.
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

#### Aufgabenstellung
1. Lesen Sie den [Artikel](https://shapeshed.com/unix-cut/) über das Kommando ```cut```, damit Sie mit 
der Option ```-d``` den Delemiter angeben, an welcher Stelle im Text
```cut``` schneiden soll.
2. Verwenden Sie im while-Loop das Pipe-Symbol ("|"):
```
cat fileX | while read x; do
    do something with $x
done
```
3. Wiederholen Sie die Aufgaben 1 bis 2 jedoch mit einem for-in-Loop
```
for user_line in $(cat fileX);do
    do something with $x
done
```
