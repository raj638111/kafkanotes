

-- Old and New Consumer Groups

  # 186

  # Old consumer group
    + Is maintained by Zookeeper
    + Use --zookeeper

  # New consumer group
    + Is maintained by Brokers
    + Use --bootstrap-server


-- List all Consumer groups

  kafka-consumer-groups.sh --zookeeper zoo1.example.com:2181/kafka-cluster --list

  kafka-consumer-groups.sh --new-consumer --bootstrap-server kafka1.example.com:9092/kafka-cluster --list

-- Describe a specific consumer group

kafka-consumer-groups.sh --zookeeper zoo1.example.com:2181/kafka-cluster --describe --group testgroup

GROUP TOPIC PARTITION CURRENT-OFFSET LOG-END-OFFSET LAG OWNER
myconsumer my-topic 0 1688 1688 0

GROUP           The name of the consumer group.
TOPIC           The name of the topic being consumed.
PARTITION       The ID number of the partition being consumed.
CURRENTOFFSET   The last offset committed by the consumer group for this topic partition. This is the
                position of the consumer within the partition.
LOG-ENDOFFSET   The current high-water mark offset from the broker for the topic partition. This is the
                offset of the last message produced and committed to the cluster.
LAG             The difference between the consumer Current-Offset and
                the broker Log-End-Offset for this topic partition.
OWNER           The member of the consumer group that is currently
                consuming this topic partition. This is an arbitrary ID
                provided by the group member, and does not necessarily
                contain the hostname of the consumer.

-- Delete Consumer Group & Offset information

  ****Possible only on older consumer maintained by zookeeper
      For new consumers that uses Kafka (ie broker), use Client Specific API's
        to manage offsets

  kafka-consumer-groups.sh --zookeeper zoo1.example.com:2181/kafka-cluster --delete --group testgroup
  Deleted all consumer group information for group testgroup in
  zookeeper.

  # Delete offset for a specific topic in consumer group

  kafka-consumer-groups.sh --zookeeper zoo1.example.com:2181/kafka-cluster --delete --group testgroup
  --topic my-topic
  Deleted consumer group information for group testgroup topic
  my-topic in zookeeper.

  # Offset Management (Export offsets to a file)

  Export format: /consumers/GROUPNAME/offsets/topic/TOPICNAME/PARTITIONID-0:OFFSET

  kafka-run-class.sh kafka.tools.ExportZkOffsets --zkconnect zoo1.example.com:2181/kafka-cluster \
  --group testgroup --output-file offsets
  # cat offsets
  /consumers/testgroup/offsets/my-topic/0:8905
  /consumers/testgroup/offsets/my-topic/1:8915
  /consumers/testgroup/offsets/my-topic/2:9845
  /consumers/testgroup/offsets/my-topic/3:8072


  # Offset Management (Import new offsets)
  kafka-run-class.sh kafka.tools.ImportZkOffsets --zkconnect \
  zoo1.example.com:2181/kafka-cluster --input-file offsets

