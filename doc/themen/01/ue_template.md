<div class="jumbotron"><img class="icon" src="themen/kommunikation/img/kom-1.jpg">
    <h2>Begriffe und Konzepte - ÜBUNG</h2>
</div>

#### Inhaltsverzeichnis

<!-- MarkdownTOC -->

- [Aufgabe 1: Ubuntu-Version ermitteln](#aufgabe-1-ubuntu-version-ermitteln)

<!-- /MarkdownTOC -->


<a id="aufgabe-1-ubuntu-version-ermitteln"></a>
### Aufgabe 1: Ubuntu-Version ermitteln
<a id="ausgangslage"></a>
#### Ausgangslage
Dem Container fehlt das Kommando <code>lsb_release</code>, um die Version von Ubuntu zu ermitteln.

<a id="aufgabenstellung"></a>
#### Aufgabenstellung
1. Lesen Sie den Artikel &#8594;&nbsp;<a href="https://stackoverflow.com/questions/58395566/lsb-release-command-not-found-in-latest-ubuntu-docker-container" target="tab">lsb_release: command not found in latest Ubuntu Docker container</a>
2. Setzen Sie die vorgeschlagene Massnahmen in Ihrem Ubuntu-Container um und ermitteln Sie die Ubuntu-Version.<div class="solution" style="display: none">
    apt-get update && apt-get install -y lsb-release && apt-get clean all<br/>
    lsb-release -a<br/>
</div>
3. Welche Alternative schlägt der Artikel vor die die Ubuntu-Version ohne <code>lsb_release</code> zu verwenden?<div class="solution" style="display: none">cat /etc/os-release</div>

<a id="rahmenbedingungen"></a>
#### Rahmenbedingungen
Was | Beschreibung
--- | ---
Produkt: | Dokument mit Ihren Antworten
Zeit: | 15 Min.
Sozialform: | Einzel- oder Partnerarbeit
Arbeitsmittel: | Unterrichtsunterlagen, Office