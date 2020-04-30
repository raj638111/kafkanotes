
-- Constraint #64

    # These 3 joins can only happen when the data is **co-partitioned
        + KStream / KStream (Sliding window)
        + KTable / KTable
        + KStream / KTable

        https://cwiki.apache.org/confluence/display/KAFKA/Kafka+Streams+Join+Semantics
        https://stackoverflow.com/questions/56042453/kstream-join-retry-delayed-kstream

-- Co-partitioning

    # means, same no of partition is there on the stream and table

-- How to co-partition?

    # Write back the topics through kafka before join
      (Network cost)


