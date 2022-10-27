
    # KTable
        + Is an abstraction of 'Changelog Stream' where each record represents an **update

    # tombstone
        + A record with value of null represent tombstone for that key
          as the key will be deleted from KTable

    # Lookup
        + KTable can be used for lookup through
            - Join Operation
            - Interactive Queries

    # Interactive Queries
        + I.Queries Allows stream processing layer to be treated as
          lightweight embedded database for external application to lookup
        + Advantage
          - Avoids having a separate table to share the results
            with external applications
        + Use cases
            + Video gaming
            + Risk & Fraud
        + https://docs.confluent.io/current/streams/concepts.html#interactive-queries

    # Log Compacted topic
        + A KTable should be backed by log compacted topic
          . In case of application restart, the KTable state can be initialized
            much more quickly...if  we have a log compacted topic in which
            ~ Duplicate keys are removed
        + Log compaction only happens during cleanup (Believe this is right?)
            (ie The duplicates for the key in the topic are not immediately
              removed on reception of the key by the broker)
        + Log Compaction happens everytime a segment is closed (Also triggered when
          enough data is dirty)

    # Reference
        + KTable
            https://docs.confluent.io/current/streams/concepts.html#ktable
