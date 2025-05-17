#!/bin/bash
mkdir -p /var/run/zabbix
chown zabbix:zabbix /var/run/zabbix
exec /usr/sbin/zabbix_server -f