<div class="jumbotron"><img class="icon" src="themen/img/terminal.png">
    <h2>Operatoren</h2>
</div>


#### Inhaltsverzeichnis

<!-- MarkdownTOC levels=3 -->

- [Einleitung](#einleitung)
- [Arithmetische Operatoren \(Integer\)](#arithmetische-operatoren-integer)
- [String-Operatoren](#string-operatoren)
- [Beispiel Datenextraktion](#beispiel-datenextraktion)
- [Substring ersetzen](#substring-ersetzen)
- [Weitere Operatoren](#weitere-operatoren)

<!-- /MarkdownTOC -->

<a id="einleitung"></a>
### Einleitung
Folgende Opertor-Typen gibt es:
* Arithmetische Operatoren 
* String Operatoren 
* Relational Operatoren 
* Boolean Operatoren
* File Test Operatoren 

<a id="arithmetische-operatoren-integer"></a>
### Arithmetische Operatoren (Integer)

**Nur simple arithmetische Ganzzahl-Berechnungen** können mit der Shell berechnet werden. (Fliesskommazahlen nur mit dem Pipe-Tool `bc`.)

Es gibt in der Bash drei Varianten, um einen arithmetischen Ausdruck zu berechnen:

- `var=$(( Int-Arithmetik ))` 
- `var=$[ Int-Arithmetik ]`  

Die wichtigesten Operatoren sind:

| Opreation | Erklärung |
|:-----:|:----- |
| a + b | Addition (a plus b) |
| a - b | Substraction (a minus b) |
| a * b | Multiplication (a mal b) |
| a / b | Division (Ganzzahl) (a geteilt durch b) |
| a % b | modulo (der Ganzzahlrest von a geteilt durch b) |
| a ** b | Potenz (a hoch b) |


#### Beispiel
```
$ diff=$(( 100/5 ))
$ echo $diff
20
```

<a id="string-operatoren"></a>
### String-Operatoren

#### String-Länge ermitteln
```
    STRING="das ist ein String"
    echo ${#STRING}            # 18

```
#### Index

Finde die numerische Position in `$STRING` irgendeines Zeichens in `$SUBSTRING`. Beachte, dass der `expr` Befehl benutzt wird.
```
    STRING="das ist ein String"
    SUBSTRING="asd"
    expr index "$STRING" "$SUBSTRING"     # 1 ist die Position des ersten 'd' in $STRING

```
#### Substring Extraktion

Extrahiere einen Substring der Länge `$LEN` von `$POS` ausgehend aus `$STRING`. Beachte, dass der erste Buchstabe der 0.te ist.
```
    STRING="das ist ein String"
    POS=4
    LEN=3
    echo ${STRING:$POS:$LEN}   # ist

```
Wenn `$LEN` weggelassen wird, wird der Substring von `$POS` bis zum ende der Zeile extrahiert.

```
    STRING="das ist ein String"
    echo ${STRING:1}           # $STRING Inhalt, ohne das erste Zeichen
    echo ${STRING:14}          # ring

```
<a id="beispiel-datenextraktion"></a>
### Beispiel Datenextraktion

```
    # Code um den Vornamen des Datensatzes zu extrahieren
    DATARECORD="last=Clifford,first=Johnny Boy,state=CA"
    COMMA1=$(expr index "$DATARECORD" ',')  # 14 position of first comma
    CHOP1FIELD=${DATARECORD:$COMMA1}       #
    COMMA2=$(expr index "$CHOP1FIELD" ',')
    LENGTH=$(expr $COMMA2 - 6 - 1)
    FIRSTNAME=${CHOP1FIELD:6:$LENGTH}      # Johnny Boy
    echo $FIRSTNAME
```
<a id="substring-ersetzen"></a>
### Substring ersetzen

```
    STRING="sein oder nicht sein"
```

Ersetze das erste Vorkommen des Substrings

```
    STRING="sein oder nicht sein"
    echo ${STRING[@]/sein/essen}        # essen oder nicht sein

```
Ersetze alle Vorkommen des Substrings

```
    STRING="to be or not to be"
    echo ${STRING[@]//sein/essen}       # essen oder nicht essen

```
Lösche alle Vorkommen des Substrings (mit einem leeren String ersetzen)

```
    STRING="sein oder nicht sein"
    echo ${STRING[@]// nicht/}          # sein oder sein

```
Ersetze den Substring, wenn er am Anfang des `$STRING`s ist

```
    STRING="sein oder nicht sein"
    echo ${STRING[@]/#sein/jetzt essen} # jetzt essen oder nicht sein
```
Ersetze den Substring, wenn er am Ende des `$STRING`s ist

```
    STRING="sein oder nicht sein"
    echo ${STRING[@]/%sein/essen}       # sein oder nicht essen
```
Ersetze den Substring, mit der Ausgabe eines Shellbefehls

```
    STRING="sein oder nicht sein"
    echo ${STRING[@]/%sein/sein am $(date +%Y-%m-%d)}    # sein oder nicht sein am 20xx-xx-xx

```

<a id="weitere-operatoren"></a>
### Weitere Operatoren
Die weiteren Operatoren finden Sie unter <code>03</code>
