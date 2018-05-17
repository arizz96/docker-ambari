#!/bin/bash

echo -e "\n[server]" >> /etc/ambari-agent/conf/ambari-agent.ini
echo -e "\nhostname=$AMBARI_SERVER_HOSTNAME" >> /etc/ambari-agent/conf/ambari-agent.ini
echo -e "\nurl_port=$URL_PORT" >> /etc/ambari-agent/conf/ambari-agent.ini
echo -e "\nsecured_url_port=$SECURED_URL_PORT" >> /etc/ambari-agent/conf/ambari-agent.ini

# fix warnings
hugepages --thp-never

ambari-agent start && tail -f /var/log/ambari-agent/ambari-agent.log
