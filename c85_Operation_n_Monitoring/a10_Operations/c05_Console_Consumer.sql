
-- General

  # Versions

    + Old Consumer: Uses --zookeeper
    + New COnsumer: Uses --broker-list

  # Example
  kafka-console-consumer.sh --zookeeper zoo1.example.com:2181/kafka-cluster --topic my-topic
  sample message 1

  # Consumer Configuration can be provided in 2 ways
    1. --consumer.config CONFIG_FILE
    2. --consumer-property key=value

  # Other options

    1. --formatter CLASSNAME
      + Defaults to kafka.tools.DefaultFormatter
        - Additional options can be passed for this formatter
          . print.timestamp
          . print.key
          . key.separator
          . line.separator
          . key.deserializer
          . value.deserializer
      + Available formatters are,
        a. kafka.tools.LoggingMessageFormatter
        b. kafka.tools.ChecksumMessageFormatter
        c. kafka.tools.NoOpMessageFormatter
    2. --from-beginning
    3. --max-messages NUM
    4. --partition NUM
      + Consume message only from partition `NUM`

-- Consume the __consumer_offsets topic

  kafka-console-consumer.sh --zookeeper zoo1.example.com:2181/kafka-cluster \
  --topic __consumer_offsets --formatter \
  'kafka.coordinator.GroupMetadataManager$OffsetsMessageFormatter' --max-messages 1

  [my-group-name,my-topic,0]::[OffsetMetadata[481690879,NO_METADATA]
  ,CommitTime 1479708539051,ExpirationTime 1480313339051]
  Processed a total of 1 messages

