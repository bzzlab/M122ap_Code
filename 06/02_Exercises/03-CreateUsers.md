### Aufgabe 1: Test-Benutzer anlegen
#### Ausgangslage
Die Erstellung von mehreren Test-Linux-Benutzern kann automatisiert werden, statt sie manuell anzulegen.
Für das Passwort (als Einweg-Hashcode) benötigen Sie das Paket `openssl`.

#### Aufgabenstellung
1. Es sollen die Testuser user1 bis userN (N=maximal Users) erstellt werden. 
2. Das Home-Verzeichnis ist jeweils /home/user1 bis /home/userN sein.  
3. Als Passwort kann der jeweilige Benutzername dienen. Folgende Kommando-Folge führt zum Ziel.
z.B. für user1: `echo user1 | openssl passwd -1 -stdin`. Installieren Sie dazu das Paket `openssl`.
4. bash soll die Standard-Shell sein.  
5. Alle erstellen Benutzer sollen in der Gruppe users hinzugefügt werden 

Tipp: Mit useradd --help können Sie die entsprechenden Optionen für die Aufgabenstellung nachlesen.

### Aufgabe 2: Test-Benutzer anzeigen
#### Ausgangslage
Nachdem die Benutzer erstellt worden sind, soll ein Bash-Script 
diese ausgeben.

#### Aufgabenstellung
1. Geben Sie mit einem Einzeiler nur (Tipp: Ausgabe filtern) die neu angelegten Benutzer (user1, usw.) aus, welche 
sich in Datei `/etc/passwd` befinden.
2. Setzen Sie die Farb-Option beim Filter auf `auto`

### Aufgabe 3: Test-Benutzer löschen
#### Ausgangslage
Nachdem die Benutzer erstellt worden sind, soll ein Bash-Script
diese löschen.

#### Aufgabenstellung
1. Löschen Sie die erstellten Benutzer user1, user2 usw.
2. Löschen Sie die erstellten Home-Verzeichnisse der Benutzer.

### Aufgabe 4: Test-Benutzerverwaltung
#### Ausgangslage
Nachdem Sie die Aufgaben 1-3 erledigt haben, integrieren Sie diese
Scripte zu einem benutzerfreundlichen Bash-Script.

#### Aufgabenstellung
1. Integrieren Sie die Aufgaben 1-3 mit einer benutzergeführten Menu (s. Beispiel unten)
```
root@0dbfcf5b8adf:/# ./03d_testuser.sh
Users ([c]reate, [s]how, [d]elete): x
Your Request : x         
Incorrect action entered!
root@0dbfcf5b8adf:/# ./03d_testuser.sh
Users ([c]reate, [s]how, [d]elete): c
Your Request : c
Create 5 users  
root@0dbfcf5b8adf:/# ./03d_testuser.sh
Users ([c]reate, [s]how, [d]elete): s
Your Request : s
Show created users
user1:x:1000:100::/home/user1:/bin/bash
user2:x:1001:100::/home/user2:/bin/bash
user3:x:1002:100::/home/user3:/bin/bash
user4:x:1003:100::/home/user4:/bin/bash
user5:x:1004:100::/home/user5:/bin/bash
root@0dbfcf5b8adf:/# ./03d_testuser.sh
Users ([c]reate, [s]how, [d]elete): d
Your Request : d
Delete  5 users
root@0dbfcf5b8adf:/# 
```
