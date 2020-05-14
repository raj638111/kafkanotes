#!/bin/bash


# EC2 instance = Web Tools (This already has Zoo Navigator installed)

# ssh -i "rajkp.pem" ubuntu@ec2-54-175-216-24.compute-1.amazonaws.com


# make sure you open port 9000 on the security group

# make sure you can access the zookeeper endpoints
nc -vz zookeeper1 2181
nc -vz zookeeper2 2181
nc -vz zookeeper3 2181

# make sure you can access the kafka endpoints
nc -vz kafka1 9092
nc -vz kafka2 9092
nc -vz kafka3 9092

# copy the kafka-manager-docker-compose.yml file
nano kafka-manager-docker-compose.yml

# launch it
docker-compose -f kafka-manager-docker-compose.yml up -d

# docker ps

CONTAINER ID        IMAGE                              COMMAND                  CREATED             STATUS                            PORTS               NAMES
630e0c444c8a        qnib/plain-kafka-manager           "/usr/local/bin/entr…"   6 seconds ago       Up 5 seconds (health: starting)                       ubuntu_kafka-manager_1
0d93d51141a8        elkozmon/zoonavigator-web:latest   "./run.sh"               25 hours ago        Up 25 hours (healthy)                                 zoonavigator-web
efc548c65823        elkozmon/zoonavigator-api:latest   "./run.sh"               25 hours ago        Up 25 hours (healthy)                                 zoonavigator-api

# Conncect from Browser and validate

http://54.175.216.24:9000