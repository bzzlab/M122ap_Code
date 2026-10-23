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
4. Überprüfen Sie mit dem Kommando `watch`, ob ihr Skript die Files nach 5 Minuten
   gelöscht hat.
