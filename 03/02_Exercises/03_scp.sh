#!/bin/bash
#
# Set variable for target node (your AWS EC2 instance)
DEST="ubuntu@<aws-hostname>"
# Set variable for your private key
PRIVATE_KEY="$HOME/.ssh/<your-private-key>"

# Set variable for source directory
SRC="."
# Set variable for target directory where the app should be stored
TRG="03/sol"

echo "Remove directory ${TRG} on ${DEST}"
#??
echo "Create directory ${TRG} on ${DEST}"
#??
# copy 03_file-checks.sh and text files
#??
#??
