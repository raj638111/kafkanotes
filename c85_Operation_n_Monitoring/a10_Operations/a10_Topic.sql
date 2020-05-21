

-- Creation, Repartition
  # 184

  # Best Practice
    + Do not change partition for topic with keyed messages
      (This will cause the mapping of keys to partitions will change
       which in turn will cause the consumer to partition mapping change
       which would not be good ...)

  # Reducing partition
    + Is NOT possible

  # Examples
    kafka-topics.sh --zookeeper zoo1.example.com:2181/kafka-cluster --alter --topic my-topic --partitions 16

-- Deletion

  # Best Practice
    + Delete unused topics... why?
      - Because this frees up resources like,
        . Disk space
        . Open file handles
        . Memory


  # Examples
    kafka-topics.sh --zookeeper zoo1.example.com:2181/kafka-cluster --delete --topic my-topic


-- Listing / Describe

  kafka-topics.sh --zookeeper zoo1.example.com:2181/kafka-cluster --list

  kafka-topics.sh --zookeeper zoo1.example.com:2181/kafka-cluster --describe
    Topic:other-topic PartitionCount:8 ReplicationFactor:2 Configs:
    Topic:other-topic Partition: 0 ... Replicas: 1,0 Isr: 1,0
    Topic:other-topic Partition: 1 ... Replicas: 0,1 Isr: 0,1
    ...
    Topic:other-topic Partition: 6 ... Replicas: 1,0 Isr: 1,0
    Topic:other-topic Partition: 7 ... Replicas: 0,1 Isr: 0,1

  + Additional options
    --topics-with-overrides
      . Describes only topics whose configuration differ from the default config


-- Important Topic Diagnose commands

# List all partition without leader
# (This is serious as a partition without a leader is not accessible by producer or consumer)
kafka-topics.sh --zookeeper zoo1.example.com:2181/kafka-cluster --describe --unavailable-partitions

# Under replicated partitions
kafka-topics.sh --zookeeper zoo1.example.com:2181/kafka-cluster --describe --under-replicated-partitions
Topic: other-topic Partition: 2 Leader: 0 Replicas: 1,0 Isr: 0
Topic: other-topic Partition: 4 Leader: 0 Replicas: 1,0 Isr: 0










