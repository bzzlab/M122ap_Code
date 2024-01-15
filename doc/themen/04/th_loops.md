<div class="jumbotron"><img class="icon" src="themen/img/terminal.png">
    <h2>Loops (Schleifen) in Bash</h2>
</div>



#### Inhaltsverzeichnis

<!-- MarkdownTOC levels=3 -->

- [for-Schleife](#for-schleife)
- [while Schleife](#while-schleife)
- [until Schleife](#until-schleife)
- ["break" und "continue" Schlüsselwort](#break-und-continue-schl%C3%BCsselwort)

<!-- /MarkdownTOC -->

<a id="for-schleife"></a>
### for-Schleife

```
# grundlegendes Konstrukt
    for argument in [list]
    do
      Befehle...
    done
```

Mit jedem neuen Durchlauf der Befehle in der Schleife, nimmt das `argument` den nächsten Wert in `list` an. Dann werden die Befehle ausgeführt.

```
# Schleife ueber einen Array
NAMES=(Joe Jenny Sara Tony)
for N in ${NAMES[@]} ; do
  echo "Mein Name ist $N"
done
```
```
# Schleife ueber die Ausgabe eines Befehls
for f in $( ls prog.sh /etc/localtime ) ; do
  echo "Datei ist: $f"
done
```
<a id="while-schleife"></a>
### while Schleife

```
# grundlegendes Konstrukt
while [ Bedingung ]
do
  Befehle...
done
```

Das while Konstrukt testet die Bedingung und falls wahr, führt die Befehle aus. Es wiederholt dies solange, wie die Bedingung wahr ergibt.

```
COUNT=4
while [ $COUNT -gt 0 ]; do
  echo "Wert von count ist: $COUNT"
  COUNT=$(($COUNT - 1))
done

```
<a id="until-schleife"></a>
### until Schleife

```
# grundlegendes Konstrukt
until [ Bedingung ]
do
  Befehle...
done
```

Das until Konstrukt testet die Bedingung und, falls falsch, führt die Befehle aus. Es wiederholt dies solange, wie die Bedingung wahr ergibt (das Gegenteil des while Konstrukt).

```
COUNT=1
until [ $COUNT -gt 5 ]; do
  echo "Wert von count ist: $COUNT"
  COUNT=$(($COUNT + 1))
done
```

<a id="break-und-continue-schl%C3%BCsselwort"></a>
### "break" und "continue" Schlüsselwort

`break` und `continue` beeinflussen den Kontrollfluss einer `for`, `while` und `until` Schleife. `break` benutzt man um den Rest der Schleifenausführung abzubrechen. `continue` hingegen bricht nur den aktuellen Durchgang ab und macht mit dem nächsten weiter.

#### Beispiele:

```
# Gibt 0,1,2,3,4 aus
COUNT=0
while [ $COUNT -ge 0 ]; do
  echo "Wert von COUNT ist: $COUNT"
  COUNT=$((COUNT+1))
  if [ $COUNT -ge 5 ] ; then
    break
  fi
done
```

```
# Gibt nur ungerade Zahlen aus - 1,3,5,7,9
COUNT=0
while [ $COUNT -lt 10 ]; do
  COUNT=$((COUNT+1))
  # Checke ob COUNT gerade ist
  if [ $(($COUNT % 2)) = 0 ] ; then
    continue
  fi
  echo $COUNT
done
```
