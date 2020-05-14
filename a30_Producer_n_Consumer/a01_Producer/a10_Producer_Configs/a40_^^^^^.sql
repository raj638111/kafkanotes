
#65

# Batching

    + Increases the throughput from producer to broker
      as sending a message over a N/W has CPU & network overhead.
      Sending messages in batches reduces this overhead there
      by increasing the **throughput

    + Note: Batch also increase the **latency of message
            (ie the time it took for the message produced in Producer
             to be committed in broker)

-- Batch size

    # A batch is complete when it reaches a certain size (batch.size)
      or after a period of time (linger.ms)

    # Note
        + Messages going to different partitions cannot be batched

-- batch.size

    # Is the maximum no of bytes that will be included in one batch
    # Default: 16,384 bytes (16 KB)
      + Usual value: 32KB or 64KB
    # Is allocated per partition
    # Beware:
      + Any message bigger than batch size will not be batched
    + (ProducerConfig.BATCH_SIZE_CONFIG, Integer.toString(32*1024)) // 32 KB batch size

-- linger.ms

    # The producer groups together any records that arrive in between request transmissions
      into a single batched request. Normally this occurs only under load
      when records arrive faster than they can be sent out. However in some
      circumstances the client may want to reduce the number of requests even
      under moderate load. This setting accomplishes this by adding a small amount
      of artificial delay—that is, rather than immediately sending out a
      record the producer will wait for up to the given delay to allow other
      records to be sent so that the sends can be batched together

    # Default value: 0 ms
      + ie: Producer will send message to kafka immediately

    # (ProducerConfig.LINGER_MS_CONFIG, "20") // 20 milliseconds

    https://docs.confluent.io/current/installation/configuration/producer-configs.html#linger.ms

http://www.pattersonconsultingtn.com/blog/throughput_testing_kafka.html
https://www.confluent.io/blog/apache-kafka-producer-improvements-sticky-partitioner/