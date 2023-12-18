### Aufgabe 1: ip Command
#### Ausgangslage
Dem Container fehlt das Kommando <code>ip</code>, um die Version von Ubuntu zu ermitteln.

#### Aufgabenstellung
1. Starten Sie Ihr Ubuntu-Container. Entweder über die Kommandozeile oder über Ihren Desktop.
   Beispiel über die Kommando-Zeile:
```
# container image name ermitteln
docker ps -a
CONTAINER ID   IMAGE                     COMMAND   CREATED             STATUS             PORTS     NAMES
00d07924fee4   readydocker1/m122:eiger   "bash"    About an hour ago   Up About an hour             pensive_mclean
# container mit bash-Shell starten
docker run -it readydocker1/m122:eiger bash
```
2. Installieren und testen Sie das Kommando <code>ip</code> als root wie folgt:
   <code>apt-get update && apt install iproute2</code> und
   <code>ip -c a</code>
3. Kopieren Sie nun mit <code>docker cp [HOST-FILE] [CONTAINER-ID]:[PATH]</code>
   die Shell-Scripts 03*.sh einzeln ins temporäre Verzeichnis des Ubuntu-Containers. Die laufende Container-ID ermitteln Sie mit <code>docker ps</code>. Beispiel:
```
   docker ps 
   docker cp ./cmd-subst.sh 4bc:/tmp
```
4. Starten Sie das Script <code>03a-source.sh</code> einmal direkt und danach mit dem Kommando <code>source</code>. Welchen Unterschied stellen Sie fest? 
```
   Mit source werden die gesetzten Variablen (in 03b-variables.sh) im 
   Script 03a-source.sh verwendet und ausgegeben.  
```
