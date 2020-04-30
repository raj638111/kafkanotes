
    # KTable
        + Is an abstraction of KStream where each record represents an **update

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

    # Reference
        + KTable
            https://docs.confluent.io/current/streams/concepts.html#ktable
