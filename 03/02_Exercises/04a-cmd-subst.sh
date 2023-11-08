#!/bin/bash
# Topic: Command substitution with either backquotes or with $(...)
# Funktioniert nur in Ubuntu!
computername=`hostname`
echo "computername : $computername"
ipadr=$(ip address| grep -v inet6 | grep inet | awk '{print $2}' | grep -v 127)
echo "ipaddresses : $ipadr"

echo "Number of sessions to this system : $(who|wc -l)"
echo "The users connected to this system : $(who | awk '{print $1}')"
