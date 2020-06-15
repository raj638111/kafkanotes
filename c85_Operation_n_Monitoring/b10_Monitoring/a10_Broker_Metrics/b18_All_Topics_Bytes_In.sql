
-- All topics bytes in

  # JXM Bean
    kafka.server:type=BrokerTopicMetrics,name=BytesInPerSec
    Value: Rates as doubles, count as integer
    (All the rate metrics have seven metrics)
    + EventType
      - Is the unit of measurement. Ex: 'bytes'
    + RateUnit
      - Period of rates. Ex: 'SECONDS'
    (Example: bytes / SECOND)
    + OneMinuteRate
      - Average over one minute
    + FiveMinuteRate
    + FifteenMinuteRate
    + MeanRate
      Average since the broker was started
    + Count
      - Total no of bytes produced to the broker since the broker was started

  # Specifies how much message traffic your brokers are
    receiving from producing clients

  # if one broker in a cluster is receiving more traffic than
    the others, which would indicate that it is necessary to
    rebalance the partitions in the cluster

