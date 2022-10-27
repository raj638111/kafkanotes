

    # Input
        + Is either
            - KStream or
            - KTable

    # Output
        + Is always a,
            - KTable

    # Example operations
        + sum()
        + count()
        + reduce()
        + aggregate()
          . Is a generalization of reduce where input & output
            can be of different type

    # Can be,
        + Windowed (or)
        + Non-Windowed

    # https://docs.confluent.io/current/streams/concepts.html#aggregations
      https://docs.confluent.io/current/streams/developer-guide/dsl-api.html#aggregating