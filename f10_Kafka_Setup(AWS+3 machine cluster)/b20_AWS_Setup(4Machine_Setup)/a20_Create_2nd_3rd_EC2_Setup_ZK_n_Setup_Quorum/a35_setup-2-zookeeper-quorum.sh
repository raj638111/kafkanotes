#!/bin/bash
# create data dictionary for zookeeper on all 3 instances
sudo mkdir -p /data/zookeeper
# Set the owner as ubuntu for that directory
sudo chown -R ubuntu:ubuntu /data/
# declare the server's identity
echo "1" > /data/zookeeper/myid
echo "2" > /data/zookeeper/myid
echo "3" > /data/zookeeper/myid
# Check the ids
cat /data/zookeeper/myid
# edit the zookeeper settings
rm /home/ubuntu/kafka/config/zookeeper.properties
# Copy the content of zookeeper.properties (the next file)
vi /home/ubuntu/kafka/config/zookeeper.properties
# validate
cat /home/ubuntu/kafka/config/zookeeper.properties
# restart the zookeeper service
# Can start & check from foreground before running the zookeeper as a service
#   bin/zookeeper-server-start.sh config/zookeeper.properties
# Note:
#   1 machine will become a leader and 2 other machines followers
#   Also out of 3 one machine can go down in the quorum
sudo service zookeeper stop
sudo service zookeeper start
# observe the logs - need to do this on every machine
cat /home/ubuntu/kafka/logs/zookeeper.out | head -100
nc -vz localhost 2181
# This is not working for me?
nc -vz localhost 2888
# This is not working for me?
nc -vz localhost 3888
echo "ruok" | nc localhost 2181 ; echo
# Stat provides info like wether leader or follower etc...
echo "stat" | nc localhost 2181 ; echo
# Validate if the quorum is working
# We create a node in one server and check if that is available in
# the other servers; which validates all the 3 servers are in sync
bin/zookeeper-shell.sh localhost:2181
create /my-node "some data"
# not happy
ls /
# Remove node
rmr /my-node