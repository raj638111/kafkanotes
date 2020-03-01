
-- Constraint #64

    # These 3 joins can only happen when the data is **co-partitioned
        + KStream / KStream
        + KTable / KTable
        + KStream / KTable


-- Co-partitioning

    # means, same no of partition is there on the stream and table

-- How to co-partition?

    # Write back the topics through kafka before join
      (Network cost)

    #

