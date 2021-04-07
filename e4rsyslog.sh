#!/bin/bash
# E4 RsysLog

#Ajoute ladresse du serveur LibreNMS
echo "*.4 @192.168.60.66:514" >> /etc/rsyslog.conf
systemctl restart rsyslog
systemctl status rsyslog
