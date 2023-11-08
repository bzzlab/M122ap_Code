### Aufgabe 1: HTML Snippets generieren
#### Ausgangslage
Ein Bash-Script kann hilfreich sein, um langweilige Handarbeit zu vermeiden. In dieser
Aufgaben sollen Sie einen HTML-Ausschnitt generieren, welche Bilder aus einem Ordner
enthält. Nebst ls, cut benötigen Sie das Tool awk. 

#### Aufgabenstellung
1. Lesen Sie den [Artikel](https://www.tutorialspoint.com/awk/awk_basic_examples.htm) über 
das Kommando ```awk```. Die erste Seite genügt.
2. Erzeugen Sie folgenden HTML-Code mit den angegebenen Kommandos. Die Bilder befinden sich
im Ordner img
```
<img src="img/bild01.png" width="60%" height=auto />                
<img src="img/bild02.png" width="60%" height=auto />                
<img src="img/bild03.png"  width="60%"  height=auto />                            
<img src="img/bild04.png"  with="60%" height=auto />                           
<img src="img/bild05.png" width="60%" height=auto />                      
```
