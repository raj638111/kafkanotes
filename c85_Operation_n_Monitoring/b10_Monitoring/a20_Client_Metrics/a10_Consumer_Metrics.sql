

-- Useful Metrics

  # Overall Consumer
    + kafka.consumer:type=consumer-metrics,client-id=CLIENTID
  # Fetch Manager
    + kafka.consumer:type=consumer-fetch-manager-metrics,client-id=CLIENTID
  # Per-Topic
    + kafka.consumer:type=consumer-fetch-manager-metrics,client-id=CLIENTID,topic=TOPICNAME
  # Per-Broker
    + kafka.consumer:type=consumer-node-metrics,client-id=CLIENTID,nodeid=node-BROKERID
  # Coordinator
    + kafka.consumer:type=consumer-coordinator-metrics,client-id=CLIENTID

-- Fetch Manager

  # fetch-latency-avg
    + This metric tells us how long fetch requests to the brokers take
  # bytes-consumed-rate
  # records-consumed-rate
  # fetch-rate
    + Number of fetch requests per second that the consumer is performing
  # records-per-request-avg
    + Average number of messages in each fetch request

-- Per-broker and per-topic metrics

  # ...

-- Consumer coordinator metrics

  # The consumer coordinator is the part of the consumer client
    that is responsible for co-ordination activities like,
    + Group members joining and
    + Heart beat messages
  (The biggest problem that consumers can run into due to coordinator activities is a
   pause in consumption while the consumer group synchronizes. This is when the consumer
   instances in a group negotiate which partitions will be consumed by which
   individual client instances)

  + sync-time-avg
    - Average amount of time, in milliseconds, that the sync
      activity takes
  + sync-rate
    - Number of group syncs that happen every second
    (For a stable consumer group, this number
     should be zero most of the time)
  + assigned-partitions
    Number of partitions that the consumer client (as a single
    instance in the consumer group) has been assigned to consume
