#!/bin/bash
# Topic: loops

read -p "Service Action [(s)tart, s(t)op, (p)ause, (r)estart]: " action
action=$(echo $action | tr '[A-Z]' '[a-z]')
echo "Your Request : $action"

case $action in
  s | start) echo "Starting the service"
    ;;
  t | stop) echo "Stopping the service"
    ;;
  r | restart) echo "Restarting the service"
    ;;
  p | pause) echo "Pausing the service"
    ;;
  *) echo "Incorrect action entered!"
  ;;
esac
