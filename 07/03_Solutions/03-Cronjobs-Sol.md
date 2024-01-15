### Aufgabe 1: Zeitgesteuerter Ablauf ausprobieren
#### Ausgangslage
Cronjobs unter Linux unterstützen Abläufe zeitgesteuert zu automatisieren.
In dieser Übung sollen Sie das exemplarisch ausprobieren.

#### Aufgabenstellung
1. Um Cronjobs einzurichten, müssen Sie das Paket `cron` im Container 
nachinstallieren.
2. Erstellen Sie einen Ordner `/root/trash` und erzeugen Sie einige
   Dateien darin. 
3. Erstellen Sie ein Skript, welches alle 5 Minuten
   die Dateien innerhalb von diesem Ordner löscht. 
4. Cronjob starten (pendant dazu ist stop oder restart)
5. Überprüfen Sie mit dem Kommando `watch`, ob ihr Skript die Files nach 5 Minuten
   gelöscht hat.

#### Lösungen
```
#1
apt-get update && apt-get install -y cron && apt-get clean all
crontab -e
#2
mkdir /root/trash
touch /root/trash/file{1..10}
#3
nano /root/trash.sh #mit Inhalt:
#!/bin/bash
rm /root/trash/*

chmod +x trash.sh

crontab -e
*/5 * * * * /root/trash.sh
#4
/etc/init.d/cron start
#5
watch ls /root/trash  
```
