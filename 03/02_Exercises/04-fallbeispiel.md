### Aufgabe 1: Benutzer erstellen
#### Ausgangslage
Dem Container fehlt ein Benutzer "dev1", um mit Standard-Privilegien auf dem System zu
operieren und privilegierte Aktionen mit dem Kommando <code>sudo</code> auszuführen.

#### Aufgabenstellung
1. Lesen Sie den Artikel &#8594;&nbsp;<a href="https://www.digitalocean.com/community/tutorials/how-to-create-a-new-sudo-enabled-user-on-ubuntu-20-04-quickstart" target="tab">How To Create a New Sudo-enabled User on Ubuntu 20.04 [Quickstart]</a>
2. Überprüfen Sie Ihren Benutzerstatus mit <code>whoami</code>. Sie sollten root sein.
```
   whoami
```
3. Setzen Sie die vorgeschlagene Massnahme (Step 2+3) als root für den Benutzer "dev1" in Ihrem Ubuntu-Container um.
   Wählen Sie ein einfaches Passwort, Fullname "BZZ-developer", Room 100, Phone je leer, Other: m122
```
adduser dev1
...
New password:
Retype new password:
passwd: password updated successfully
Changing the user information for dev1
Enter the new value, or press ENTER for the default
        Full Name []: BZZ-developer
        Room Number []: 100
        Work Phone []:
        Home Phone []:
        Other []: m122
Is the information correct? [Y/n] y
```
4. Überprüfen Sie mit <code>groups</code> gefolgt vom Benutzer,
   ob der Benutzername sich in der sudo-Gruppe befindet.
```
    groups dev1
```
5. Installieren und testen Sie das Kommando <code>sudo</code> nach dem
      häufig verwendeten Format, um fehlende Kommandos zu installieren
      <code>apt-get update && apt-get -y install sudo && apt-get clean all</code>
```
   apt-get update && apt-get -y install sudo && apt-get clean all
```
6. Fügen Sie als Benutzer root den Benutzer dev1 in die sudo-Gruppe mit <code>usermod -aG sudo dev1</code> ein.
```
   usermod -aG sudo dev1
```
7. Wechseln Sie vom Benutzer root mit <code>su - <Benutzername></code> zum neuen,
   erstellen Benutzer und ermitteln Sie dessen Heimverzeichnis-Pfad.
   Überprüfen Sie nochmals den Benutzerstatus mit <code>whoami</code>. Sie sollten der neue Benutzer sein.
```
   su - dev1
   pwd
   whoami
```

8. Kopieren Sie nun mit <code>docker cp [HOST-FILE] [CONTAINER-ID]:[PATH]</code>
   die HOST-Datei 02_Exercises/cmd-subst.sh ins Heimverzeichnis des neu
   erstellen Benutzers. Die laufende Container-ID ermitteln Sie mit <code>docker ps</code>.
```
   docker ps 
   docker cp ./04a_cmd-subst.sh 4bc:/home/dev1
```
7. Überprüfen Sie, ob das Script ins Heimverzeichnis des neu
   erstellen Benutzers kopiert wurde.
```
   ls -al *.sh
```

---
### Aufgabe 2: Rechte setzen
#### Ausgangslage
Das Script <code>04a_cmd-subst.sh</code> weder ausgeführt noch editiert werden, weil
nur der Benutzer root Zugriff darauf hat.

#### Aufgabenstellung
1. Ändern Sie den Owner auf das Script <code>04a_cmd-subst.sh</code> von Benutzer root
   auf den neu erstellen Benutzer mit <code>chown</code> (change owner). Recherchieren Sie dazu die korrekte Syntax.
```
   sudo chown dev1 04a_cmd-subst.sh
```
3. Analog zu 2 ändern Sie die Group auf das Script <code>04a_cmd-subst.sh</code> von Benutzer root
   auf den neu erstellen Benutzer mit <code>chgrp</code> (change group). Recherchieren Sie dazu die
   korrekte Syntax.
```
   sudo chgrp dev1 04a_cmd-subst.sh
```
4. Überprüfen Sie mit <code>ls [OPTION]</code> die Zugriffsrechte.
```
   ls -al 04a_cmd-subst.sh
```

### Aufgabe 3: Command Substitution
#### Ausgangslage
Command Substitution hilft u.a. schlanke Shell-Scripts zu schreiben.

#### Aufgabestellung
1. Führen Sie das kopierte Shell-Script <code>04a_cmd-subst.sh</code> in Ihrem Ubuntu-Container aus.
2. Fassen in einigen Sätzen oder Stichworten zusammen, was Shell-Script bewirkt.
