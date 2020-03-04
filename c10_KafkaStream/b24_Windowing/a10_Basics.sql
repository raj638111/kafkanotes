
-- Windowing

    (Note: Windows are tracked per record key)

    # Steps
        1. grouping
            - Groups records with same key to ensure data is properly partitioned by key
        2. Windowing
            - Allows to further subgroup the records of that key

-- Example

    # Aggregation operation
        + Windowing state store is used to store latest aggregation results / window
        + Old records in the state store are purged based on the
          window retention period

    # Join operation
        + Windowing state store is used to store all the records received so far within the
          defined window boundary


https://docs.confluent.io/current/streams/developer-guide/dsl-api.html#windowing