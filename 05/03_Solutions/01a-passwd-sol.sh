#!/bin/bash
#
# use the one attached to the lesson or your /etc/passwd.txt
file_passwd="/etc/passwd"
# Ignore following users:
# /usr/sbin/nologin
# /bin/false
# in the fields
# 1 - user id
# 6 - Home dir
# 7 - shell

cat $file_passwd | while read user_line; do
  USER_ID=$(echo $user_line | cut -d: -f1)
  USER_HOMEDIR=$(echo $user_line | cut -d: -f6)
  USER_SHELL=$(echo $user_line | cut -d: -f7)

  if [[ $USER_SHELL != "/usr/sbin/nologin" && $USER_SHELL != "" && $USER_ID != $USER_SHELL ]]; then
       echo "$USER_ID -- $USER_SHELL -- $USER_HOMEDIR"
  fi
done
IFS=$'\n'
