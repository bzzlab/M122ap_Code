### Aufgabe 1: Einfaches Ratespiel
#### Ausgangslage
Arithmetische Ausdrücke mit '((,))' (s. dazu auch 03/01_Intro/02*, 03*) lassen sich komplett 
ohne $-Zeichen der Variablen in Bash programmieren.

#### Aufgabenstellung
1. Das Script fordert den Benutzer auf, eine Zahl von 1 bis 20 zu raten.
2. Solange die vom Script zufällig ermittelte Zahl nicht erraten wurde, 
werden die Anzahl Rate-Versuche des Benutzers gezählt und jedes Mal ein Hinweis 
ausgegeben, dass die zu ratende Zahl keiner oder grösser als der Vorschlag
des Benutzers ist.
3. Wird die Zahl erraten, werden die Anzahl Rate-Versuche ausgeben und 
das Spiel ist beendet.
4. Für eine Zufallszahl kann RANDOM verwendet werden (Test: ```echo $RANDOM```). 
5. Um die Zufallszahlen von 1 bis 20 zu erhalten, wenden Sie den Modulo-Operator '%' an.

