#!/bin/sh
set -e

# Create necessary directories and set permissions
mkdir -p /var/run/zabbix /var/log/zabbix
chown -R zabbix:zabbix /var/run/zabbix /var/log/zabbix
chmod 755 /var/run/zabbix /var/log/zabbix

# Execute the command as zabbix user
exec su-exec zabbix "$@" 