#!/bin/sh

# Stop the system services on the 4.0 system
# Run as root

systemctl stop edge-server
systemctl stop mirthconnect
systemctl stop torquebox
