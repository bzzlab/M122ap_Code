#!/bin/bash
# shellcheck disable=SC2188
<<'TASK'
Aufgabe: Test-Benutzerverwaltung
Ausgangslage
Nachdem Sie die Teil-Aufgaben 1-3 erledigt haben, integrieren Sie diese
Scripte zu einem benutzerfreundlichen Bash-Script.

Aufgabenstellung
1. Integrieren Sie die Aufgaben 1-3 mit einem benutzer-geführten Menu
2. Testen Sie Ihr Script in Ihrer AWS EC2 Instanz

Beispiel:
```
root:/# ./03d_testuser.sh
Users ([c]reate, [s]how, [d]elete): x
Your Request : x
Incorrect action entered!
root:/# ./03d_testuser.sh
Users ([c]reate, [s]how, [d]elete): c
Your Request : c
Create users ...
How many?: 5
Created 5 users
root:/# ./03d_testuser.sh
Users ([c]reate, [s]how, [d]elete): s
Your Request : s
Show created users
user1:x:1000:100::/home/user1:/bin/bash
user2:x:1001:100::/home/user2:/bin/bash
user3:x:1002:100::/home/user3:/bin/bash
user4:x:1003:100::/home/user4:/bin/bash
user5:x:1004:100::/home/user5:/bin/bash
root:/# ./03d_testuser.sh
Users ([c]reate, [s]how, [d]elete): d
Your Request : d
"Number of users to be delete 'users': 5"
Delete users? (y/N): y
Deleting users ...
root:/#
```

TASK

# Define your prefix (change this as needed)
#??

# Define functions
function create {
#??
#??
#??
#??
#??
#??
#??
#??
}

function show {
#??
}

function delete {
#??
#??
#??
#??
#??
#??
#??
#??
}

# Number of users to create
#??
# Read users action
#??
#??
echo "Your Request : $action"

case $action in
  c | create )
#??
#??
#??
#??
#??
#??
#??
#??
#??
#??
#??
    ;;
  s | show )
#??
#??
    ;;
  d | delete )
#??
    # Check if count is lower equal 0.
    # If yes than exit script
#??
#??
#??
#??
#??
#??
#??
    # Ask confirmation for deletion.
    # if Y or y than delete else exit.
#??
#??
#??
#??
#??
#??
#??
    ;;
  *) echo "Incorrect action entered!"
  ;;
esac
