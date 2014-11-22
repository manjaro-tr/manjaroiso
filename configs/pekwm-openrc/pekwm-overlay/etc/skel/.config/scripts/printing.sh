#!/bin/bash
#
# Simple bash script to install the necessary software packages to
# enable printing capabilities. CUPs service is then enabled and
# started.
#
# Written by Carl Duff

# Information about this script for the user
echo "${title}Install and Enable Full Printing Capabilities${nrml}

This will install all the necessary software to enable printing capabilities.
You will then be able to connect and set-up your printer straight away.

Press ${grnb}<enter>${nrml} to proceed. You may still cancel the process when prompted."

read
pacman -S manjaro-printer && systemctl enable cups.service -f && systemctl start cups.service
read -p $'\n'"Process Complete. Press ${grnb}<enter>${nrml} to continue"$'\n'
exit 0
