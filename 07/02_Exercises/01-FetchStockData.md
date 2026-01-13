### Aufgabe 1: Aktienkurse online abfragen
#### Ausgangslage
Im Internet können auch über die Bash-Shell Aktienkurse direkt abgefragt werden, 
um diese in einem möglichen nachgelagerten Prozess weiterzuverarbeiten.

#### Aufgabenstellung
1. Das Script verlangt 3 Argumente: Ticker-Symbol, Start- und Enddatum im ISO-Dateformat (YYYY-MM-DD).
2. Es erscheint eine Fehlermeldung, falls die Argumente nicht angegeben werden. 
3. Lesen Sie dazu den folgenden [Artikel](https://flaviocopes.com/http-curl/), um anhand einer URL
Daten über HTTP abzurufen. 
4. Mit folgender URL können Sie Aktienkurse abrufen 
```
https://query1.finance.yahoo.com/v7/finance/download/$ticker?period1=$start_time&period2=$end_time&interval=$interval&events=history"
```
5. Start- und Enddatum in der URL zu verwenden, muss es vom ISO-Dateformat ins Unix Timestamp konvertiert werden.
6. Testen Sie das Script mit verschiedenen Ticker-Symbolen (s. dazu https://stockanalysis.com/stocks/)
7. Beispiel-Aufruf
```
$ ./01a_FetchStockData.sh MSFT                                                                   
Error: Three arguments is required:
ticker                            
start- and end-time in ISO-format.
Exit script.                      

$ ./01a_FetchStockData.sh MSFT 2022-01-01 2022-12-30
https://query1.finance.yahoo.com/v7/finance/download/MSFT?period1=1640991600&period2=1672354800&interval=1wk&events=history...
Date,Open,High,Low,Close,Adj Close,Volume
2021-12-27,338.510010,339.359985,335.850006,336.320007,333.197906,18000800
2022-01-03,335.350006,338.000000,310.089996,314.040009,311.124725,173959800
...
```
