#!/bin/bash
# Variable for the report output file
REPORT_FILE="report-hardening-baker_st_corp-01.txt"
# Output the hostname
echo "Gathering hostname..."
# command to get the hostname
echo "Hostname: $(hostname)" >> $REPORT_FILE printf "\n" >> $REPORT_FILE
# Output the OS version
echo "Gathering OS version..."
# command to get the OS version
echo "OS Version: $(uname -o)" >> $REPORT_FILE printf "\n" >> $REPORT_FILE
# Output memory information
echo "Gathering memory information..."
# command to get memory info
echo "Memory Information: $(free -h)" >> $REPORT_FILE printf "\n" >> $REPORT_FILE
# Output uptime information
echo "Gathering uptime information..."
# command to get uptime info
echo "Uptime Information: $(uptime)" >> $REPORT_FILE printf "\n" >> $REPORT_FILE
# Backup the OS
echo "Backing up the OS..."
# command to back up the OS
sudo tar -cvpzf /baker_street_backup.tar.gz --exclude=/baker_street_backup.tar.gz --exclude=/proc --exclude=/tmp --exclude=/mnt --exclude=/sys --exclude=/dev --exclude=/run /
echo "OS backup completed." >> $REPORT_FILE printf "\n" >> $REPORT_FILE
# Output the sudoers file to the report
echo "Gathering sudoers file..."
# command to output sudoers file
echo "Sudoers file:$(cat /etc/sudoers)" >> $REPORT_FILE printf "\n" >> $REPORT_FILE
# Script to check for files with world permissions and update them
echo "Checking for files with world permissions..."
chmod -R o-rwx ./home
# command to find and update files with world permissions
echo "World permissions have been removed from any files found." >> $REPORT_FILE printf "\n" >> $REPORT_FILE
# Find specific files and update their permissions
echo "Updating permissions for specific scripts..."
# Engineering scripts - Only members of the engineering group
echo "Updating permissions for Engineering scripts."
find . -iname '*engineering*.sh' -exec chmod g+rwx {} \; -exec chgrp engineering {} \;
echo "Permissions updated for Engineering scripts" >> $REPORT_FILE printf "\n" >> $REPORT_FILE
# Research scripts - Only members of the research group
echo "Updating permissions for Research scripts..."
find . -iname '*research*.sh' -exec chmod g+rwx {} \; -exec chgrp research {} \;
echo "Permissions updated for Research scripts" >> $REPORT_FILE printf "\n" >> $REPORT_FILE
# Finance scripts - Only members of the finance group
echo "Updating permissions for Finance scripts"
find . -iname '*finance*.sh' -exec chmod g+rwx {} \; -exec chgrp finance {} \;
echo "Permissions updated for Finance scripts." >> $REPORT_FILE printf "\n" >> $REPORT_FILE
echo "Script execution completed. Check $REPORT_FILE for details."