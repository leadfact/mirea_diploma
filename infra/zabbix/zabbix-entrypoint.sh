#!/bin/bash
# Create the directory and set permissions
mkdir -p /var/run/zabbix || { echo "Failed to create /var/run/zabbix"; exit 1; }
chown zabbix:zabbix /var/run/zabbix || { echo "Failed to chown /var/run/zabbix"; exit 1; }
chmod 755 /var/run/zabbix
# Run Zabbix server as the zabbix user
exec gosu zabbix /usr/sbin/zabbix_server -f