#!/bin/bash
sudo apt-get purge activemq
sudo rm -rf /usr/share/doc/activemq/examples/conf
sudo rm -rf /usr/share/activemq/lib/optional

wget http://archive.apache.org/dist/activemq/5.11.1/apache-activemq-5.11.1-bin.tar.gz
cd /opt
sudo tar -vxzf /home/m/Downloads/apache-activemq-5.11.1-bin.tar.gzbin.tar.gz
sudo chown -R activemq:activemq /opt/apache-activemq-5.11.1/
sudo ln -sf /opt/apache-activemq-5.11.1/ /opt/activemq

cd apache-activemq-5.11.1/
sudo bin/activemq start
sudo netstat -nl | grep 61616

sudo rm /etc/init.d/activemq
sudo ln -s /opt/activemq/bin/linux-x86-64/activemq /etc/init.d/activemq
sudo update-rc.d activemq start 66 2 3 4 5 . stop 34 0 1 6 .
