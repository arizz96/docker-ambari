#!/bin/bash

echo "[server]" >> /etc/ambari-agent/conf/ambari-agent.ini
echo "hostname=$AMBARI_SERVER_HOSTNAME" >> /etc/ambari-agent/conf/ambari-agent.ini
echo "url_port=$URL_PORT" >> /etc/ambari-agent/conf/ambari-agent.ini
echo "secured_url_port=$SECURED_URL_PORT" >> /etc/ambari-agent/conf/ambari-agent.ini

ambari-agent start
