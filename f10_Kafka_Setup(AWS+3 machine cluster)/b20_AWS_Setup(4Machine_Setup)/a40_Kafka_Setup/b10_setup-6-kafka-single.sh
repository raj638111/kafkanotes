#!/bin/bash

# 27
# **In iterm use Shit Command i to send this command to
# all 3 EC2 instances (in 3 split pane)

# Add file limits configs - allow to open 100,000 file descriptors
echo "* hard nofile 100000
* soft nofile 100000" | sudo tee --append /etc/security/limits.conf
# * hard nofile 100000
#* soft nofile 100000

# reboot for the file limit to be taken into account
sudo reboot

sudo service zookeeper start
sudo chown -R ubuntu:ubuntu /data/kafka

# edit kafka configuration
rm config/server.properties
# Use the properties from a35_server*.properties
vi config/server.properties

# launch kafka
bin/kafka-server-start.sh config/server.properties

# Validate in Zoo Navigator all the nodes that has been created
# Refer b15 for the output


# Install Kafka boot scripts to add kafka as a service
# Add the content from b20_kafka.sh
sudo vi /etc/init.d/kafka
# Make it executable
sudo chmod +x /etc/init.d/kafka
# Make it own by root
sudo chown root:root /etc/init.d/kafka
# Update services list
# you can safely ignore the warning
sudo update-rc.d kafka defaults

## Note: Starting from here...all the instructions are only for
# for the 1st machine EC1

# start kafka
sudo service kafka start
# verify it's working
nc -vz localhost 9092
# look at the server logs
cat /home/ubuntu/kafka/logs/server.log


# create a topic
# Note we have zookeeper1:2181/kafka as we have /kafka in root
bin/kafka-topics.sh --zookeeper zookeeper1:2181/kafka --create --topic first_topic --replication-factor 1 --partitions 3

# produce data to the topic
bin/kafka-console-producer.sh --broker-list kafka1:9092 --topic first_topic
hi
hello
(exit)
# read that data
# **Note: If only 1 broker is running; we would need to change the ISR to 1 ; or else,
# message will not be written to Kafka from producer
bin/kafka-console-consumer.sh --bootstrap-server kafka1:9092 --topic first_topic --from-beginning
# list kafka topics
bin/kafka-topics.sh --zookeeper zookeeper1:2181/kafka --list
