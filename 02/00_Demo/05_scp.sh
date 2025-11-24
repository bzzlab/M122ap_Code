#!/bin/bash
#
# Set variable for target node (your AWS EC2 instance)
DEST="Ihre Destination"
# Set variable for your private key
PRIVATE_KEY="$HOME/.ssh/<your private key>.pem"

# Set variable for source directory
SRC="../02_Exercises"
# Set variable for target directory where the app should be stored
TRG="M122ap_Code/02/02_Exercises"

# remove (with ssh) target directory for the app
echo "Remove directory ${TRG} on ${DEST}"
ssh -i ${PRIVATE_KEY} ${DEST} "rm -rf ${TRG}"
echo "Create directory ${TRG} on ${DEST}"
ssh -i ${PRIVATE_KEY} ${DEST} "mkdir -p ${TRG}"
scp -i ${PRIVATE_KEY} ${SRC}/01_report.sh ${DEST}:${TRG}
