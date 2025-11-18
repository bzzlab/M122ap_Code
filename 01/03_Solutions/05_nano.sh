#!/bin/bash
:<<'TASK'
Editor installieren

1. Lesen Sie den Artikel "How to Use Nano, the Linux Command Line Text Editor"
https://linuxize.com/post/how-to-use-nano-text-editor/
2. Falls nano nicht vorhanden ist, dann installieren Sie den Editor
in Ihrer AWS EC2 Instanz.
3. Editieren Sie mit nano den Tree-Output /tmp/tree.txt
(aus Aufgabe 04_tree-usage.sh) in dem Sie einen passenden Titel zuoberst vergeben.
TASK

# Lösung zu 2
# apt-get install nano -y && apt-get clean all #??
# Lösung zu 3
nano /tmp/tree.txt #??
# "To exit nano, press Ctrl+x" #??