
    # General stream use case needs
        + Stream &
        + Table
        (Example: Enrich stream of incoming transaction with latest customer info from table)

    # Duality means,
        + Stream can be viewed as table
        + Table can be viewed as stream
        . Stream - Is basically changelog of table
        . Table - Is basically a snapshot of Stream at a point in time with the latest
                  value of each key

    # Stream > Table
        + Method 1: By replaying the changelog of stream we can create a table
        + Method 2: By aggregating a stream, we can create a table
            . Example: (Stream) Stream of pageview events by user >
                       (Table) Total number of pageview count by user where key
                          is user & value is count
    # Table > Stream
        + Method 1: Can be achieved by iterating over each key/value pair in the table

    # https://docs.confluent.io/current/streams/concepts.html