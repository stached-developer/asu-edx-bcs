#!/bin/bash
# Variable for the report output file
REPORT_FILE="report-hardening-baker_st_corp-02.txt"
# Output the sshd configuration file
echo "Gathering details from sshd configuration file"
# command to get the sshd configuration file
echo "sshd configuration file:$(cat /etc/ssh/sshd_config)" >> $REPORT_FILE printf "\n" >> $REPORT_FILE
# Update packages and services
echo "Updating packages and services..."
# update packages
apt update
# upgrade packages
apt update -y
echo "Packages have been updated and upgraded." >> $REPORT_FILE printf "\n" >> $REPORT_FILE
# command to list all installed packages
echo "Installed Packages:$(apt list --installed)" >> $REPORT_FILE printf "\n" >> $REPORT_FILE
echo "Printing out logging configuration data..."
# command to display logging data
echo "journald.conf file data: $(cat /etc/systemd/journald.conf)" >> $REPORT_FILE printf "\n" >> $REPORT_FILE
# command to display logrotate data
echo "logrotate.conf file data:$(cat /etc/logrotate.conf)" >> $REPORT_FILE printf "\n" >> $REPORT_FILE
echo "Script execution completed. Check $REPORT_FILE for details."