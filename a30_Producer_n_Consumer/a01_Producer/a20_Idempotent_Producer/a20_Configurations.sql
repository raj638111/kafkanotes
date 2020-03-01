

-- Idempotent producer by default has the following values

    # `retries`
        + Integer.MAX
    # `max.in.flights.requests`
        + 1 on version 0.11
        + 5 on version >= 1.0
            . Is high performance
            . Also keeps ordering
                ~ Ticket: KAFKA-5494
    # acks = all

    # Best practice
        + Setting those defaults explicitly will make the code more readable
        +