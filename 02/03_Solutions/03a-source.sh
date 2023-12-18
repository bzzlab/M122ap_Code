#!/bin/bash
# Topic: source command
# source is a Bash shell built-in command that executes the content
# of the file passed as an argument in the current shell.
# It has a synonym in . (period).

# falsch:
# ./03b-variables.sh
# korrekt:
source ./03b-variables.sh
echo "COURSE: $COURSE"
echo "SITE: $SITE"

gethostdetails
