

== State store

  -- Why needed?

    + To store stateful information when stateful operation is used
      Stateful Operations Example:  count(), aggregate(), windowing a stream etc...
      https://docs.confluent.io/current/streams/architecture.html#state

  -- How do we create the state store?

    + KStream DSL automatically creates and manages state store for operations like
      count(), aggregate(), windowing etc...

  -- Local State Store: Is state store local to each stream task?

    + Yep, each stream task gets its own 'local state store'
      (Refer next picture)

  -- Is it possible to access all the Local State Store in its entirety?

    + Yep, Using,

      - 'stateful operations' such as count() or

      - Through 'Interactive Queries'
        . Interactive Queries allows us to fetch the state of the application
          from outside the application
        . Can be used to access either Local State Store (or) 'Remote State Stores'
          for the entire app
        . https://kafka.apache.org/20/documentation/streams/developer-guide/interactive-queries.html

  -- How is state store implemented?

    + State store can either be,
      - 'RocksDB'
      - 'In Memory Hash' (or)
      - Another convenient data structure

    + Example Code
      - https://simplydistributed.wordpress.com/2017/03/21/kafka-streams-state-stores/

  -- If a stream task fails and is reinitialized in another instance
  -- of the application, how is the old state of the state store restored?

    + Each state store is backed by a 'replicated changelog topic' (Log Compacted),
      with each partition of the topic backing up a corresponding local state store
      for a task

      So, in case of task reinitialization, this changelog topic
      is replayed to restore the state store to the previous state

    + Does this task reinitialization needs to be completed before
      the specific KStream task can start processing data?
      - Yep

    + Is there a way to decrease this task reinitialization time?
      - Yep, by having a 'standby replica' (Full replicated copies of the state)
      - ??? Is standby replica another topic ?

    https://docs.confluent.io/current/streams/architecture.html#fault-tolerance


