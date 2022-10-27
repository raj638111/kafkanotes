

# 190
-- Dynamic Configuration

  # Are configs that can be overridden for topics / client quotas when the
    cluster is running

  # Can be done for,
    + per-topic
    + per-client
    + overrides

  # Is stored in
    + Zookeeper

-- Override (Topic configuration defaults)

#191
kafka-configs.sh --zookeeper zoo1.example.com:2181/kafka-cluster --alter --entity-type topics --entity-name <topic name> --add-config <key>=<value>[,<key>=<value>...]

cleanup.policy        If set to compact, the messages in this topic will be discarded
                      such that only the most recent message with a given key is retained (log compacted).
compression.type      The compression type used by the broker when writing message batches
                      for this topic to disk. Current values are gzip, snappy, and lz4.
delete.retention.ms   How long, in milliseconds, deleted tombstones will be retained for
                      this topic. Only valid for log compacted topics.
...

-- Override (Client configuration defaults)

  # Only configuration that can be overridden are,
    + Producer Quotas
    + Consumer Quotas
    Quotas: Bytes/second a client is either produce / consume on a per-broker
            basis
            This means that if you have five brokers in a cluster, and you specify a producer
            quota of 10 MB/sec for a client, that client will be allowed to produce 10 MB/sec on
            each broker at the same time for a total of 50 MB/sec

    Note: ***Client ID vs Consumer Group
      The client ID is not necessarily the same as the consumer group
      name. Consumers can set their own client ID, and you may have
      many consumers that are in different groups that specify the same
      client ID. It is considered a best practice to set the client ID for each
      consumer group to something unique that identifies that group.
      This allows a single consumer group to share a quota, and it makes
      it easier to identify in logs what group is responsible for requests.


  # Example
    kafka-configs.sh --zookeeper zoo1.example.com:2181/kafka-cluster --alter --entity-type \
    clients --entity-name <client ID> --add-config <key>=<value>[,<key>=<value>...]

    producer_bytes_rate The amount of messages, in bytes, that a singe client ID
                        is allowed to produce to a single broker in one second.
    consumer_bytes_rate The amount of messages, in bytes, that a single client ID
                        is allowed to consume from a single broker in one second.


-- Describe all the configuration overrides

  # Example: Show all configuration overrides for the topic named “my-topic”
  kafka-configs.sh --zookeeper zoo1.example.com:2181/kafka-cluster \
  --describe --entity-type topics --entity-name my-topic

  Configs for topics:my-topic are
  retention.ms=3600000,segment.ms=3600000

-- Remove Configuration overrides

  # Can be used to restore the overridden to the default config
  kafka-configs.sh --zookeeper zoo1.example.com:2181/kafka-cluster --alter --entity-type \
  topics --entity-name my-topic --delete-config retention.ms
  Updated config for topic: "my-topic".


-- Useful properties

  # Quotas
    (Can be applied for user, client-id)
    + producer_byte_rate
      There are five brokers in a cluster, a topic with 10 partitions and replication factor of 3, and a quota of producer_bytes_rate of 1 MB/sec has been specified for the client. What is the maximum throughput allowed for the client?
        0.33 MB/s
        ​10 MB/s
        ​5 MB/s
        (Correct)
        ​1 MB/s
        (Incorrect)

    + consumer_byte_rate

