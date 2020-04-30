
# Batching
    + increases the throughput from producer to broker
      as sending a message over a N/W has CPU & network overhead
      sending messages in batches reduces this overhead there
      by increasing the **throughput
    + Note: Batch also increase the **latency of message
            (ie the time it took for the message produced in Producer
             to be committed in broker)

-- Batch size

    # A batch is complete when in reaches a certain size (batch.size)
      or after a period of time (linger.ms)

    # Note
        + Messages going to different partitions cannot be batched

-- batch.size

    # Default: 16,384 bytes (16 KB)

-- linger.ms

    # 0 ms
        + Event with linger.ms as 0 ; the producer
          will try to group records at the same time into batches

http://www.pattersonconsultingtn.com/blog/throughput_testing_kafka.html
https://www.confluent.io/blog/apache-kafka-producer-improvements-sticky-partitioner/