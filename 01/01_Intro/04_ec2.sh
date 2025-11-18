#!/bin/bash
#
# Set variable for target node (your AWS EC2 instance)
DEST="Ihre Destination" #??
# Set variable for your private key
PRIVATE_KEY="$HOME/.ssh/<your private key>.pem" #??

# open secure shell
ssh -i "${PRIVATE_KEY}" "ubuntu@${DEST}" #??

