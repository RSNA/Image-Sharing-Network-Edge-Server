#!/bin/sh

# Start the system services on the 4.0 system
# Run as root

systemctl start edge-server
systemctl start mirthconnect
systemctl start torquebox
