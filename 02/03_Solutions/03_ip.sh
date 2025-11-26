#!/bin/bash
:<<'TASK'
Installieren und testen Sie in Ihrer AWS EC2 Instanz das Kommando 'ip'.
Tipp: Das zu installierende Paket heisst 'iproute2'
TASK

# Install without confirmation and
# clean all installation files afterwards
apt-get update -y && apt install iproute2 -y && apt-get clean all #??
# Test
ip -c a
