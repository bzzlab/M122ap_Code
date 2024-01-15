#!/bin/bash
<<'###'
Creating, showing and deleting max linux users
The user should be named user1, user2, ...
The password for the users should be user1, user2, ...
The home directory should be /home/user1, /home/user2, ...
The shell for the users should be /bin/bash
All users are in the group users
The users should be created in one line of code

To install openssl:
apt-get update && apt-get install -y openssl && apt-get clean all
###

# Define functions
function create {
  i=1
  while [[ i -le max ]];
  do
  	useradd -g users -m -d /home/user"$i" \
  	-s /bin/bash -p $(echo user"$i" | openssl passwd -1 -stdin) user"$i"
  	((i++))
  done
}
function show {
  cat /etc/passwd |grep user --color=auto
}

function delete {
  i=1
  while [[ i -le max ]];
  do
  	userdel user"$i"
  	rm -rf /home/user"$i"
  	((i++))
  done
}

# Number of users to create
max=5
# Read users action
read -p "Users ([c]reate, [s]how, [d]elete): " action

action=$(echo $action | tr '[A-Z]' '[a-z]')
echo "Your Request : $action"

case $action in
  c | create ) echo "Create $max users"; create
    ;;
  s | show ) echo "Show created users"; show
    ;;
  d | delete ) echo "Delete  $max users"; delete
    ;;
  *) echo "Incorrect action entered!"
  ;;
esac



