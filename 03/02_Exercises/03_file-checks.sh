#!/bin/bash
:<<'TASK'
Aufgabe: Dateien AWS EC2 Instanz überprüfen
Ausgangslage
Mit den entsprechenden Operatoren können über die Bash-Shell Dateien und Verzeichnisse
überprüft werden. Lesen Sie zu diesem Zweck die wichtigsten
File-Test-Operatoren im beigelegten PDF-Artikel (Quelle: https://tldp.org/LDP/abs/html/fto.html)
nach.

Aufgabestellung
1. Erstellen Sie ein Shellscript, welche geeignete Datei-Operatoren verwendet
und folgende Bedingungen überprüft ...
   1. ob die reguläre Datei '/etc/passwd' existiert.
   2. ob die Datei '03_myfile.txt' leer ist.
   3. ob '/etc/' ein Verzeichnis ist.
   4. ob Sie Schreibrechte auf die Datei '03_passwd.txt' haben.
   5. ob Sie Besitzer von '/etc/passwd' sind.
   6. ob Sie in der Gruppe von '/etc/passwd' sind.
   7. ob '/etc/passwd' neuer (Datum) als '03_passwd.txt' ist.
   8. ob '/etc/passwd' älter (Datum) als '03_passwd.txt' ist.

2. Kopieren Sie sämtliche 03_*-Dateien in Ihre AWS EC2 Instanz (Heim-Verzeichnis)
und testen Sie das Shellscript.
TASK

declare datei
datei="/etc/passwd"
# Check if regular file exists
#??
  echo "2: The ${datei} is found!"
else
  echo "2: The ${datei} is not found!"
fi

# Check if file has not zero size
datei="./03_myfile.txt"
#??
  echo "3: The ${datei} is found and is not empty!"
else
  echo "3: The ${datei} is not present or it is empty!"
fi

# Check if a directory exists
datei="/etc/"
#??
  echo "4: The ${datei} is a directory!"
else
  echo "4: The ${datei} is NOT a directory!"
fi

# Check if you have read permissions on the directory
#??
  echo "7: You have read perm on ${datei}!"
else
  echo "7:  You do not have read perm on ${datei}!"
fi

# Check if you have write permissions on the directory
#??
  echo "7: You have write perm on ${datei}!"
else
  echo "7:  You do not have write perm on ${datei}!"
fi

datei="/etc/passwd"
# Check if you are the owner of the of the file
#??
  echo "6: You are the owner of ${datei}!"
else
  echo "6: You are not the owner of ${datei}!"
fi

# Check if you are member of the group
#??
  echo "7: You are the member of the group of ${datei}!"
else
  echo "7: You are not a member of the group of ${datei}!"
fi

# newer/older
declare datei2
datei2="./03_passwd.txt"
# Compare datei and datei2 which one is newer
#??
  echo "8: ${datei} is newer than ${datei2}."
else
  echo "8: ${datei} is older than ${datei2}."
fi

# Compare datei and datei2 which one is older
#??
  echo "8: ${datei} is older than ${datei2}."
else
  echo "8: ${datei} is newer than ${datei2}."
fi
