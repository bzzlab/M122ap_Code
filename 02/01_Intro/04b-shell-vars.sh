#!/bin/bash
echo "Welcome to Modul 122 - Abläufe mit Scriptsprachen automatisieren"
# $#, $?, $$, $!, $*, $@

#Internal Field Seperator
IFS="|"

echo "$*"
echo "$@"

# Aufruf von 04a-shell-vars.sh mit "$*" resp. "$@"
# Passing as n arguments but parsed as single argument
./04a* "$*"
# Passing as n arguments and parsed as n arguments
./04a* "$@"
