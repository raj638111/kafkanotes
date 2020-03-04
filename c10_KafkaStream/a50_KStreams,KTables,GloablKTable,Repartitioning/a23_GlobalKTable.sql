

    # KTable Disadvantage (Example)
        + Topic with 5 partitions
        + 5 Apps running to read from each partition
        + When read as KTable,
            + **Each app will only have that specific partition data

    # GlobalKTable Advantage (Example)
        + Topic with 5 partitions
        + 5 Apps running to read from each partition
        + When read as GlobalKTable,
            - 'Local GlobalKTable' instance for each application
              will be populated with data from all partitions

    # Where to use?
        + Joins
            - Star joins (Big table join with lot of small tables)
        + Foreign key lookups
        + Broadcasting
            - Can be used to broadcast information to all the running
              instance of an application

    # Downsides
        + Increased local storage consumption (as entire topic is tracked)
        + Increased network and Kafka broker load (as entire topic is tracked)


     + https://docs.confluent.io/current/streams/concepts.html#globalktable

