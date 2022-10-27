

-- Writing

    # KStream & KTable can both be written to a kafka topic

-- to()

    # Any change in Stream or Table will be written to kafka
        + stream.to(...)
        + table.to(...)

-- through()

    # Write to a topic & get stream or table from the topic
        + stream.through(...)
        + table.through(...)

    # Why do we need?
        + Somtimes we want to put the result of a transformation for others to use,
          but still want to continue with more transformation





