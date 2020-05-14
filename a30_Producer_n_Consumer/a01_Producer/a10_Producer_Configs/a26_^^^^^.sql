
== Retry ============================ #61


-- retries

    # Can be used to handle transient failures
        + Ex: NotEnoughReplicasException

    # Defaults to,
        + 0 on Kafka <= 2.0
        + 2147483647 >= 2.1
            . This retry count is also limited by `delivery.timeout.ms`

-- retry.backoff.ms

    # Is the time gap b/w retries
    # Default to 100ms

-- delivery.timeout.ms

    # The producer will stop retry / sending a message after this timeout
    # Available from version >= 2.1
    # Defaults to 120 000 ms = 2 minutes

-- max.in.flight.requests.per.connection

    # Is the no of messages that can be send in parallel

    # Defaults to 5
        + ie 5 messages can be sent in parallel in a given time
        + This can make a message to a partition out of order
          when a message send is failed and that message is retried
          while in the mean time the next message might have been comitted by broker


    # Set to 1
        + If you need message order in a partition
            ~ NOTE: Idempotent producer would be a better option in this case
        + ** This may affect the throughput