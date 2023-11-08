### Aufgabe 1: Aktien-Kurse bereinigen
#### Ausgangslage
Sie erhalten historische Kurse der Microsoft-Aktie (MSFT).
Das Datenfile muss jedoch gemäss Pseudocode bereinigt werden.

Der Beispielaufruf von Bash-Script 02_prune.sh sieht wie folgt aus:

```
root@0dbfcf5b8adf:/# bash 02_prune.sh 
Error: One file argument is required!
Exit script.                         
root@0dbfcf5b8adf:/# bash 02_prune.sh stock_msft.csv
Date'Open'High'Low'Close*'Adj Close**'Volume*,Volume            
     2  30/12/2022,238.21,239.96,236.66,239.82,239.82,21'930'800
     3  29/12/2022,235.65,241.92,235.65,241.01,241.01,19'770'700
     4  28/12/2022,236.89,239.72,234.17,234.53,234.53,17'457'100
     5  27/12/2022,238.70,238.93,235.83,236.96,236.96,16'688'600
     6  23/12/2022,236.11,238.87,233.94,238.73,238.73,21'207'000
     7  22/12/2022,241.26,241.99,233.87,238.19,238.19,28'651'700
     8  21/12/2022,241.69,245.62,240.11,244.43,244.43,23'690'600
     9  20/12/2022,239.40,242.91,238.42,241.80,241.80,25'150'800
    10  19/12/2022,244.86,245.21,238.71,240.45,240.45,29'696'400
    ...
```


#### Aufgabenstellung
1. Programmieren Sie das Bash-Script mit gemäss dem Pseudo-Code als Kommentare
```
# Read file
# if no argument has been provided
  # then show an error message and exit the script with error code 1
# if file does not exit ..
  # then show an error message and exit the script with error code 2.
# empty temporary file.tmp
# while reading each line of the file ..
  # remove line with Dividend and assign it to tmp-variable
  # cut tmp-variable by "-delimiter and show 1st part
  # and save it in part1-variable
  # cut tmp-variable by "-delimiter, show 2nd part and replace , by '
  # and save it in part2-variable
  # redirect by appending part1+part2-variable into temporary file
# remove all empty lines in the  temporary file and add line count
```
2.Tipp: Um die temporäre Datei zu leeren leiten Sie /dev/null darin um.
3. Entfernen Sie jene Zeilen, welche 'Dividend' in der Zeile haben (Tipp: siehe [Artikel](https://www.systutorials.com/how-to-delete-a-specific-line-from-a-text-file-in-command-line-on-linux/)).
4. Nummerieren Sie alle Zeilen der bereinigten`stock_msft.csv` erst
   am Schluss (Tipp: Help-Informationen zum `cat` lesen). Die Ausgabe muss nicht in eine Datei geschrieben werden. 

