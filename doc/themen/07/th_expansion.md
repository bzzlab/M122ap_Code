<div class="jumbotron">
    <h2>Wildcards und Brace extension</h2><img class="icon" src="themen/img/terminal.png">
</div>

#### Inhaltsverzeichnis
<!-- MarkdownTOC -->

- [Wildcards](#wildcards)
- [Brace extension](#brace-extension)

<!-- /MarkdownTOC -->


<a id="wildcards"></a>
### Wildcards

* \* steht für beliebig viele Zeichen
```
ls *.txt
```
* ? steht für ein beliebiges Zeichen
```
ls file?.txt
```

<a id="brace-extension"></a>
### Brace extension

* `{ , }` erzeugt `File1.txt`, `File2.txt` und `File3.txt`:
```
touch File{1,2,3}.txt
```
* `{ .. }` erzeugt einen Bereich
```
touch file{1..9}.txt
ls file{1..9}.txt
```
* `!` negiert einen Ausdruck
```
ls file{!3}.txt
```
* Auch Verschachtelungen sind möglich:
```
touch file{orginal{.bak,.txt}, kopie{.bak,.txt}}
```
erzeugt `fileoriginal.txt`, `fileoriginal.bak`, `filekopie.txt` und `filekopie.bak`