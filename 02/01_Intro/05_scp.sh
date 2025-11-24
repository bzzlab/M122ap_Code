#!/bin/bash
#
# Set variable for target node (your AWS EC2 instance)
DEST="Ihre Destination"
# Set variable for your private key
PRIVATE_KEY="$HOME/.ssh/<your private key>.pem"

# Set variable for source directory
SRC="."
# Set variable for target directory where the app should be stored
TRG="02/01_Intro"

# remove (with ssh) target directory for the app
echo "Remove directory ${TRG} on ${DEST}"
ssh -i ${PRIVATE_KEY} ${DEST} "rm -rf ${TRG}" #??
echo "Create directory ${TRG} on ${DEST}"
ssh -i ${PRIVATE_KEY} ${DEST} "mkdir -p ${TRG}" #??
scp -i ${PRIVATE_KEY} ${SRC}/02a_printf.sh ${DEST}:${TRG} #??
