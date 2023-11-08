# Modul 122 - Abläufe mit Scriptsprachen automatisieren

Code zum Modul 122 - Abläufe mit Script-Sprachen automatisieren.
Die entsprechenden Lernziele finden Sie auf http://ict.bzzlab.ch, anschliessend Ihren Jahrgang wählen.
Ich wünsche Ihnen viel Erfolg bei der Bearbeitung der Praxis-Beispiele. 
Daniel Garavaldi

## Editor-Umstellung
Meistens in der Status-Zeile einstellbar:
Für die Programmierung von Bash-Scripts müssen Sie Ihren Editor
von CRLF (Carriage return line feed) auf LF (line feed) umstellen.
* https://stackoverflow.com/questions/14219092/bash-script-bin-bashm-bad-interpreter-no-such-file-or-directory
* https://www.jetbrains.com/help/webstorm/configuring-line-endings-and-line-separators.html#change_line_ending

### Docker starten, stoppen von einem Container oder
#### Variante: Docker von einem Image starten
Docker vom image "readydocker1/m122" mit bash starten.
Kurzer Test: Container hat keine Tools (z.B. ip für die die Abfrage des Netzwerks) installiert.
```
$ docker image ls
REPOSITORY          TAG       IMAGE ID       CREATED       SIZE
bash                latest    68db3b0d9ed2   3 days ago    12.9MB
readydocker1/m122   eiger     f9783a7768f9   2 weeks ago   169MB

$ docker run -it readydocker1/m122:eiger bash
root@a4c884a51884:/# ip
bash: ip: command not found
root@a4c884a51884:/#
```

#### Variante: Docker von einem Container starten
Dieser Fall ist der häufigste, weil Sie installierten Tools wieder benötigen.
1. Alle Container ausgeben
```
$ docker ps -a
CONTAINER ID   IMAGE                     COMMAND   CREATED          STATUS                        PORTS     NAMES
7ca64630747d   readydocker1/m122:eiger   "bash"    43 minutes ago   Exited (137) 36 seconds ago             objective_mendeleev       
644b8fa29e0b   readydocker1/m122:eiger   "bash"    7 hours ago      Exited (0) 50 minutes ago               dreamy_hopper
```
Bemerkung: nur die gestarteten Container anzeigen: In diesem Fall hat es keine.
```
$ docker ps
CONTAINER ID   IMAGE     COMMAND   CREATED   STATUS    PORTS     NAMES
```
2. Container (das jüngst erzeugte, s. Spalte CREATED) starten, wo ich
   zuletzt verwendet habe (Tools installiert).
```
$ docker start 7ca
7ca
```
3. Bash-Shell im gestarteten Container ausführen. Damit verbinden Sie über die Shell sich mit dem Container.
   Kurzer Test: Container enthält die installierten Tools.
```
$ docker exec -it objective_mendeleev bash
root@7ca64630747d:/# ip address
1: lo: <LOOPBACK,UP,LOWER_UP> mtu 65536 qdisc noqueue state UNKNOWN group default qlen 1000
link/loopback 00:00:00:00:00:00 brd 00:00:00:00:00:00                                  
...
```
