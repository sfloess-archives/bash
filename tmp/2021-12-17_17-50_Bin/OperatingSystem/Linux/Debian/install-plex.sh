#!/bin/bash

# add my public key
wget -O - https://dev2day.de/pms/dev2day-pms.gpg.key | apt-key add -
# add my PMS repo
echo "deb https://dev2day.de/pms/ stretch main" >> /etc/apt/sources.list.d/pms.list
# activate https
apt-get install apt-transport-https
# update the repos
apt-get update
# install PMS
apt-get install plexmediaserver-installer
