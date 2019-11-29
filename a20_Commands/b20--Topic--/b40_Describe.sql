

-- Describe

kafka-topics.sh --zookeeper 127.0.0.1:2181 --topic first_topic --describe

Topic:first_topic	PartitionCount:3	ReplicationFactor:1	Configs:
	Topic: first_topic	Partition: 0	Leader: 0	Replicas: 0	Isr: 0
	Topic: first_topic	Partition: 1	Leader: 0	Replicas: 0	Isr: 0
	Topic: first_topic	Partition: 2	Leader: 0	Replicas: 0	Isr: 0

# **BC
  + Leader 0
    - Represents Broker ID 0 is the leader for the specific partition
  + Isr 0
    - Represents in sync replica is also broker ID 0
    - With a replication factor of 1 for this topic there would be only 1 ISR

