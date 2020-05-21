

-- Quotas

  # Kafka has the ability to throttle client requests in order to prevent one client
    from overwhelming the entire cluster
  # This is configurable for both,
    1. Producer &
    2. Consumer
  # Expressed in terms of,
    + Traffic from an individual client ID to an individual broker in bytes per second

  (Quotas are not enabled by default on the Kafka brokers)

-- Metrics to Monitor

  # Consumer bean
    + kafka.consumer:type=consumer-fetch-manager-metrics,client-id=CLIENTID,
      attribute fetch-throttle-time-avg
  # Producer bean
    + kafka.producer:type=producer-metrics,client-id=CLIENTID, attribute producethrottle-time-avg