#!/bin/bash
#
# use the one attached to the lesson or your /etc/passwd.txt
file_passwd="/etc/passwd"
# Ignore users with the following in the shell field
# /usr/sbin/nologin
# /bin/false
# 1 - user id
# 6 - Home dir
# 7 - shell

for user_line in $(cat $file_passwd); do
  USER_ID=$(echo $user_line | cut -d: -f1)
  USER_HOMEDIR=$(echo $user_line | cut -d: -f6)
  USER_SHELL=$(echo $user_line | cut -d: -f7)

  if [[ $USER_SHELL != "/usr/sbin/nologin" && $USER_SHELL != "" && $USER_ID != $USER_SHELL ]]; then
       echo "$USER_ID -- $USER_SHELL -- $USER_HOMEDIR"
  fi
done
IFS=$'\n'
