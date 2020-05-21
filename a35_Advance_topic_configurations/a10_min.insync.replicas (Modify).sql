
# Kafka 104

(Note: -zookeeper is deprecated, use --bootstrap-server instead)

--

  kafka-topics.sh --zookeeper 127.0.0.1:2181 --list
  _schemas

--

  kafka-topics.sh --zookeeper 127.0.0.1:2181 --create --topic configured-topic --partitions 3 \
  --replication-factor 1
  Created topic 'configured-topic'

--

  kafka-topics.sh --bootstrap-server 127.0.0.1:9092 --describe \
  --topic configured-topic

  Topic: configured-topic	PartitionCount: 3	ReplicationFactor: 1	Configs: << Empty config
    Topic: configured-topic	Partition: 0	Leader: 0	Replicas: 0	Isr: 0
    Topic: configured-topic	Partition: 1	Leader: 0	Replicas: 0	Isr: 0
    Topic: configured-topic	Partition: 2	Leader: 0	Replicas: 0	Isr: 0

  kafka-configs.sh --zookeeper 127.0.0.1:2181 --entity-type topics \
  --entity-name configured-topic --describe

  Warning: --zookeeper is deprecated and will be removed in a future version of Kafka.
  Use --bootstrap-server instead to specify a broker to connect to.
  Configs for topic 'configured-topic' are

--

  kafka-configs.sh --bootstrap-server 127.0.0.1:9092 --entity-type topics \
  --entity-name configured-topic --describe
  Dynamic configs for topic configured-topic are: << Empty config

-- Add a config

  kafka-configs.sh --zookeeper 127.0.0.1:2181 --entity-type topics \
  --entity-name configured-topic --alter --add-config min.insync.replicas=2

  Warning: --zookeeper is deprecated and will be removed in a future version of Kafka.
  Use --bootstrap-server instead to specify a broker to connect to.
  Completed updating config for entity: topic 'configured-topic'.

  kafka-topics.sh --bootstrap-server 127.0.0.1:9092 --describe \
  --topic configured-topic

  Topic: configured-topic	PartitionCount: 3	ReplicationFactor: 1	Configs: min.insync.replicas=2 << New config available
    Topic: configured-topic	Partition: 0	Leader: 0	Replicas: 0	Isr: 0
    Topic: configured-topic	Partition: 1	Leader: 0	Replicas: 0	Isr: 0
    Topic: configured-topic	Partition: 2	Leader: 0	Replicas: 0	Isr: 0

  kafka-configs.sh --bootstrap-server 127.0.0.1:9092 --entity-type topics \
  --entity-name configured-topic --alter --add-config min.insync.replicas=2
  (This is not working)

  Error while executing config command with args '--bootstrap-server 127.0.0.1:9092 --entity-type topics --entity-name configured-topic --alter --add-config min.insync.replicas=2'
  java.util.concurrent.ExecutionException: org.apache.kafka.common.errors.UnsupportedVersionException: The broker does not support INCREMENTAL_ALTER_CONFIGS
    at org.apache.kafka.common.internals.KafkaFutureImpl.wrapAndThrow(KafkaFutureImpl.java:45)
    at org.apache.kafka.common.internals.KafkaFutureImpl.access$000(KafkaFutureImpl.java:32)
    at org.apache.kafka.common.internals.KafkaFutureImpl$SingleWaiter.await(KafkaFutureImpl.java:104)
    at org.apache.kafka.common.internals.KafkaFutureImpl.get(KafkaFutureImpl.java:272)
    at kafka.admin.ConfigCommand$.alterConfig(ConfigCommand.scala:326)
    at kafka.admin.ConfigCommand$.processCommand(ConfigCommand.scala:297)
    at kafka.admin.ConfigCommand$.main(ConfigCommand.scala:90)
    at kafka.admin.ConfigCommand.main(ConfigCommand.scala)
  Caused by: org.apache.kafka.common.errors.UnsupportedVersionException: The broker does not support INCREMENTAL_ALTER_CONFIGS


-- Delete a config

  kafka-configs.sh --zookeeper 127.0.0.1:2181 --entity-type topics \
  --entity-name configured-topic --alter --delete-config min.insync.replicas

  Warning: --zookeeper is deprecated and will be removed in a future version of Kafka.
  Use --bootstrap-server instead to specify a broker to connect to.
  Completed updating config for entity: topic 'configured-topic'.

  kafka-topics.sh --bootstrap-server 127.0.0.1:9092 --describe \
  --topic configured-topic

Topic: configured-topic	PartitionCount: 3	ReplicationFactor: 1	Configs: << Empty again
	Topic: configured-topic	Partition: 0	Leader: 0	Replicas: 0	Isr: 0
	Topic: configured-topic	Partition: 1	Leader: 0	Replicas: 0	Isr: 0
	Topic: configured-topic	Partition: 2	Leader: 0	Replicas: 0	Isr: 0



