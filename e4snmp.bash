#!/bin/bash
# Script E4 SNMP

# Install les paquets nécéssaire
apt update
apt upgrade
apt install snmp snmpd

# Supprime et télécharge le fichier conf SNMP
rm /etc/snmp/snmpd.conf
cd /etc/snmp/ | wget https://raw.githubusercontent.com/Nil2a/Script/main/snmpd.conf

# Restart et affiche le status du service SNMP
systemctl restart snmpd.service
systemctl status snmpd.service
