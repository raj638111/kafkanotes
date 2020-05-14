#!/bin/bash
# 12, 13
# Packages
sudo apt-get update && \
      sudo apt-get -y install wget ca-certificates zip net-tools vim nano tar netcat

# Java Open JDK 8
sudo apt-get -y install openjdk-8-jdk
java -version

# Disable RAM Swap - can set to 0 on certain Linux distro
# **This is done; as RAM swap is not good for Zookeeper and Kafka
# (Have seen kafka setup failing or not performant because this ^ is not set )
# Default value is
#   sudo sysctl vm.swappiness
#     vm.swappiness = 60
# Ideally we set to '0'; but not every machine supports it ; so setting it to 1
sudo sysctl vm.swappiness=1
# Ensure the above setting is configure in all reboog
echo 'vm.swappiness=1' | sudo tee --append /etc/sysctl.conf

# Add hosts entries (mocking DNS) - put relevant IPs here
# (Note: If DNS service is used, go for it instead of Mock DNS)
# Test by pinging
#   ping kafka1
echo "172.31.9.1 kafka1
172.31.9.1 zookeeper1
172.31.19.230 kafka2
172.31.19.230 zookeeper2
172.31.35.20 kafka3
172.31.35.20 zookeeper3" | sudo tee --append /etc/hosts

# download Zookeeper and Kafka. Recommended is latest Kafka (0.10.2.1) and Scala 2.12
# wget https://archive.apache.org/dist/kafka/0.10.2.1/kafka_2.12-0.10.2.1.tgz
wget https://downloads.apache.org/kafka/2.5.0/kafka_2.13-2.5.0.tgz
tar -xvzf kafka_2.13-2.5.0.tgz
rm kafka_2.13-2.5.0.tgz
mv kafka_2.13-2.5.0 kafka
cd kafka/
# Zookeeper quickstart
cat config/zookeeper.properties
bin/zookeeper-server-start.sh config/zookeeper.properties
# binding to port 2181 -> you're good. Ctrl+C to exit

# Testing Zookeeper install
# Start Zookeeper in the background
bin/zookeeper-server-start.sh -daemon config/zookeeper.properties
bin/zookeeper-shell.sh localhost:2181
ls /
# demonstrate the use of a 4 letter word
# If the zookeeper installation is ok ; then it returns,
#   imok
# NOTE: This is not working, as all 4 letter word commands (like ruok)
#   are disable in the latest version of kafka by default
#   https://issues.apache.org/jira/browse/ZOOKEEPER-2764
echo "ruok" | nc localhost 2181 ; echo

# Install Zookeeper boot scripts (Can use VI instead)
#sudo nano /etc/init.d/zookeeper (The content of this script is available
# in the next file a30_zookeeper
sudo vi /etc/init.d/zookeeper
# Make this file exeutable
sudo chmod +x /etc/init.d/zookeeper
# Change the owner to root
sudo chown root:root /etc/init.d/zookeeper
# Update the services
# you can safely ignore the warning
sudo update-rc.d zookeeper defaults
# stop zookeeper
sudo service zookeeper stop
# verify it's stopped
# output: nc: connect to localhost port 2181 (tcp) failed: Connection refused
nc -vz localhost 2181
# start zookeeper
#   Also try sudo service zookeeper status
sudo service zookeeper start
# verify it's started
nc -vz localhost 2181
echo "ruok" | nc localhost 2181 ; echo
# check the logs
cat logs/zookeeper.out
