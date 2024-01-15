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


# Number of users to create
max=5
i=1
while [[ i -le max ]];
do
  useradd -g users -m -d /home/user"$i" \
  -s /bin/bash -p $(echo user"$i" | openssl passwd -1 -stdin) user"$i"
  ((i++))
done



