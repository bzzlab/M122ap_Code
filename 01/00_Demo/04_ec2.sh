#!/bin/bash
#
# Set variable for target node (your AWS EC2 instance)
DEST="ec2-3-94-182-141.compute-1.amazonaws.com"
# Set variable for your private key
PRIVATE_KEY="$HOME/.ssh/amuster.pem"

# open secure shell
ssh -i "${PRIVATE_KEY}" "ubuntu@${DEST}"

