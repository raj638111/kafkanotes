

    # If KTable is small and can fit on the *each of the KafkaStreams application,
      we can read that as GlobalKTable

    # Advantage:
        + No need to meet co-partitioning requirement
        + Any *KStream can be joined to the table

    # Downside
        + As it resides on application, occupies disk