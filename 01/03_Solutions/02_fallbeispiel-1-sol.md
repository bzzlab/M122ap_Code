### Aufgabe 1: Ubuntu-Version ermitteln
#### Ausgangslage
Dem Container fehlt das Kommando <code>lsb_release</code>, um die Version von Ubuntu zu ermitteln.

#### Aufgabenstellung
1. Lesen Sie den Artikel &#8594;&nbsp;<a href="https://stackoverflow.com/questions/58395566/lsb-release-command-not-found-in-latest-ubuntu-docker-container" target="tab">lsb_release: command not found in latest Ubuntu Docker container</a>
2. Setzen Sie die vorgeschlagene Massnahmen in Ihrem Ubuntu-Container um und 
ermitteln Sie die Ubuntu-Version.
```
   apt-get update 
   && apt-get install -y lsb-release 
   && apt-get clean all
   lsb_release -a
```
3. Welche Alternative schlägt der Artikel vor, um die Ubuntu-Version ohne <code>lsb_release</code>
zu ermitteln?
```
cat /etc/os-release
```
---
### Aufgabe 2: Tree-Tool installieren und anwenden
#### Ausgangslage
Dem Container fehlt das Kommando <code>tree</code>, um den Speicherbedarf eines Verzeichnisses X 
als Baum-Diagramm darzustellen.

#### Aufgabenstellung
1. Lesen Sie den Artikel &#8594;&nbsp;<a href="https://askubuntu.com/questions/572093/how-to-install-tree-with-command-line" target="tab">How to install "tree" with command-line?</a>.
2. Setzen Sie die vorgeschlagene Massnahmen (Answer 1 ohne sudo) in Ihrem Ubuntu-Container um.
```
apt-get update -y
apt-get install -y tree
```
3. Lesen Sie den Artikel &#8594;&nbsp;<a href="https://www.tecmint.com/linux-tree-command-examples/" target="tab">Linux ‘tree Command’ Usage Examples for Beginners</a>.
Erstellen Sie auf deren Basis folgende Ausgaben über das Verzeichnis <code>/var</code>:
   1. Geben Sie nur die Verzeichnisse <u>ohne</u> Pfad-Angabe aus.
   ```tree var -d```
   2. Geben Sie nur die Verzeichnisse <u>mit</u> Pfad-Angabe aus.
   ```tree var -d -f```
   3. Geben Sie die Verzeichnisse und Dateien bis und mit Stufe 2 aus.
   ```tree var -L 2```
   4. Geben Sie die Zugriffsrechte der Verzeichnisse und Dateien bis und mit Stufe 2 aus.
   ```tree -f -p -L 2```
   5. Welche Benutzer und Gruppen haben auf Stufe 2 Zugriff auf die Verzeichnisse resp. Dateien.
   ```tree var -f -pug -L 2```
   6. Ermitteln Speicherbedarf auf Stufe 3 in __human-readable format__ und speichern Sie den Output in die Datei <code>/tmp/tree.txt</code>
   ```tree var -h -L 3 -o /tmp/tree.txt```
___
### Aufgabe 3: Editor installieren

#### Ausgangslage
Dem Container fehlt den Editor <code>nano</code>, 
um kleinere Dateien unkompliziert auf dem Server zu editieren.

#### Aufgabenstellung
1. Lesen Sie den Artikel &#8594;&nbsp;<a href="https://www.configserverfirewall.com/docker/install-text-editor/" target="tab">How to Install a Text editor on Docker Container</a>.
2. Installieren Sie nur <code>nano</code> in Ihrem Ubuntu-Container.
```
   apt-get update && apt-get install nano && apt-get clean all
```
3. Editieren Sie mit <code>nano</code> den Tree-Output <code>/tmp/tree.txt</code> (aus Aufgabe 2) in 
dem Sie einen passenden Titel zuoberst vergeben.

