<div class="jumbotron"><h2>Helpdesk</h2><small>Hier häufige Helpdeskanfragen publiziert in der Hoffnung, dass schneller Ihre Herausforderung meistern können.</small></div>

#### Inhaltsverzeichnis

<!-- MarkdownTOC -->

- [Fehlermeldung  Webstorm, Node und MySQL](#fehlermeldung-webstorm-node-und-mysql)
- [Pfad von MySQL](#pfad-von-mysql)

<!-- /MarkdownTOC -->
***

<a id="fehlermeldung-webstorm-node-und-mysql"></a>
### Fehlermeldung  Webstorm, Node und MySQL
##### Fehlermeldung
... <code>ER_NOT_SUPPORTED_AUTH_MODE</code> ...
##### Plattformen
betrifft alle Plattformen
##### Ursache
Sicherheitseinstellung von MySQL
##### Behebung
In DataGrip folgendes SQL-Kommando ausführen, wobei für *'YourRootPassword'* das Passwort eingeben,
welches Sie als *root*-Passwort bei der Installation von MySQL verwendet haben. Im Unterricht wurde das Passwort *'Hello1234!'* (inkl. Ausrufezeichen) vorgeschlagen:

```sql
ALTER USER 'root'@'localhost' IDENTIFIED WITH mysql_native_password BY 'YourRootPassword';
```

<div style="margin-bottom: 10rem"></div>

<a id="pfad-von-mysql"></a>
### Pfad von MySQL 
##### Fehlermeldung
Sie tippen in Ihrem (Mac OSX) Home-Verzeichnis das Kommando <code>mysql -u root -p</code> und es 
erscheint ... <code>mysql not found</code> oder ähnliche Fehlermeldung.
##### Plattformen
Mac OSX
##### Ursache
Der Pfad von MySQL befindet sich nicht in der Pfad-Variable <code>$PATH</code>

##### Behebung
Die Pfad-Variable anpassen mit

```bash
cat "export PATH=$PATH:/usr/local/mysql/bin" >> .bash_profile 
```

und Terminal schliessen und starten. Anschliessend sollte das Kommando <code>mysql -u root -p</code> keine Fehlermeldung, sondern das MySQL-Passwort abfragen, damit Sie über das Terminal auf MySQL zugreifen können.


<div style="margin-bottom: 10rem"></div>
