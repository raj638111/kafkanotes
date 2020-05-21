
-- Kafka Producer Metric MBeans

  # Overall Producer
    + kafka.producer:type=producer-metrics,client-id=CLIENTID
  # Per-Broker
    + kafka.producer:type=producer-node-metrics,client-id=CLIENTID,nodeid=node-BROKERID
  # Per-Topic
    + kafka.producer:type=producer-topic-metrics,client-id=CLIENTID,topic=TOPICNAME

-- Overall Producer (Metrics)

  + record-error-rate

    - This metric should always be zero, and if it is anything greater than that,
      the producer is dropping messages it is trying to send to the Kafka brokers

  + record-retry-rate

  + request-latency-avg

  + record-queuetime-avg
    - This measurement is the average amount of time, in milliseconds, that a
      single message waits in the producer, after the application sends it, before it is actually
      produced to Kafka

-- Per-Broker & Per-Topic metrics

  ...