<div class="jumbotron">
    <h2>Betriebssystem-Shell - Übung<img class="icon" src="themen/img/terminal.png"></h2>
</div>

<mark>Lesen Sie zuerst die Aufgabenstellung aufmerksam und komplett durch, bevor Sie mit deren Bearbeitung beginnen!</mark>

<a name="aufgabe-1-webseite-für-einen-high-heels-in-betrieb-nehmen"></a>
### Aufgabe 1: Webseite für einen High-Heels in Betrieb nehmen 
<a name="ausgangslage"></a>
#### Ausgangslage
Sie möchten eine Webseite für High-Heels auf einem Webserver (Betriebssystem Windows oder Unix) in Betrieb nehmen. Von der Partnerfirma erhalten Sie sämtliche Ressourcen der Webseite. Die Verzeichnisstruktur ist dieses Mal nicht bekannt. Die Verlinkung der Ressourcen (HTML-Seiten, Bilder) können die Analyse der HTML-Seiten (Inhalt) erahnen. 

<figure>
<figcaption>Abb-01: Webpräsenz für High Heels</figcaption>
<img class="large" src="themen/os/img/highheels.png"/>
</figure>

<a name="aufgabenstellung"></a>
#### Aufgabenstellung
1. Entpacken Sie die [Ressourcen](downloads/high_heels.zip) der Partnerfirma in ein Verzeichnis.
2. Erstellen Sie die Verzeichnisstruktur und verschieben Sie die Daten der Webseite in die entsprechenden Verzeichnisse, indem Sie die korrekten Shell-Kommandos verwenden. Diesmal ist keine Verzeichnisstruktur angegeben. Um den Aufbau zu erkennen, müssen Sie in die HTML-Dateien mit dem Kommando <code>more</code> oder <code>cat</code> hineinschauen.<br/>Tipp: <code>more index.html |grep href</code> filtert den Inhalt der Datei <code>index.html</code> nach dem Anchor-Attribut <code>href</code>, wo die URL gespeichert ist und auf die Verzeichnisstruktur hinweist. Ähnlich funktioniert es mit dem <code>src</code>-Attribut für die Quelle der Bilder beim <code>&lt;img&gt;</code>-Tag.
3. Protokollieren Sie Ihre Schritte, welche Ihre Arbeit dokumentieren. 
4. Testen Sie anhand Ihres Browsers, ob 
    * alle Webseiten mit den Bildern korrekt angezeigt werden
    * alle Links korrekt funktionieren 

#### Erwartetes Resultat
* Ihre Antworten sind schriftlich verfasst.
* Zeit: 20 Minuten
* Sozialform: Einzel- oder Partnerarbeit
* Arbeitsmittel: Office oder Papier/Schreibzeug, Skript
