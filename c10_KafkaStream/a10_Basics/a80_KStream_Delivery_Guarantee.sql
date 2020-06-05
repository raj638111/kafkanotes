


    # KStream (Kafka => Kafka) supports Two delivery semantics

        + At-least-once-semantics
            - Records are never lost, but may be redelivered

        + Exactly-once semantic (Uses Idempotent producer & Transaction API)

    https://docs.confluent.io/current/streams/concepts.html#processing-guarantees