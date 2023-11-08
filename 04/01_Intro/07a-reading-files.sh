#!/bin/bash
# Topic: reading files using for
# Beispiel-Aufruf
# ./07a-reading-files.sh animals.txt dirXY noexistant.txt
for datei in "$@"
		do
		   [ -f $datei ] && echo "$datei: Reguläre Datei"
		   [ -d $datei ] && echo "$datei: Verzeichnis"
		   [ -b $datei ] && echo "$datei: Gerätedatei(block special)"
		   [ -c $datei ] && echo "$datei: Gerätedatei(character special)"
		   [ -t $datei ] && echo "$datei: serielles Terminal"
		   [ ! -e $datei ] && echo "$datei: existiert nicht"
		done

