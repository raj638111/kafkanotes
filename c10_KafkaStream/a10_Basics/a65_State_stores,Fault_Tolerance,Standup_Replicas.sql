

-- State store

    # Data can be stored & queried from state store
    # State store is used by operations that needs to store state information
      (Aggregation(cout, sum, ...), join, windowing)

    # State store can either be,
        + RocksDB database
        + In-memory hash map
        + Or other convenient data structure

    # Fault tolerance & Automatic recovery
        + KStream offers fault-tolerance & automatic recovery of local
          state store
          (Done through replicated changelog topic which tracks any status
           updates)
           https://docs.confluent.io/current/streams/architecture.html#fault-tolerance
        + Standby replicas
            Can be used to minimize restoration time (or else restoration of a
            local state store is done by replaying the entire changelog topic)

    # Local vs Application level state store
        + Local store
            - Is specific to one instance of the stream application
        + Application level
            - Is basically the logical grouping of all local instances of an application
            - Done through stateful operations such as count() or
              through Interactive Queries



    # https://docs.confluent.io/current/streams/architecture.html#streams-architecture-state
    # https://docs.confluent.io/current/streams/architecture.html#state