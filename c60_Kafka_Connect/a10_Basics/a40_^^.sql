
--

    # Connectors #8
        + Kafka connect cluster has multiple loaded Connectors
        + Connectors are basically Jars


    # Tasks
        + Connectors + User Configuration => Job => Tasks
        + A task is linked to a connector configuration

    # Job
        + A Job configuration can spawn multiple tasks

    # Workers
        + Tasks are executed by Kafka Connect Workers (Servers)
        + A worker is a single java process (Multiple workers
          can be run in the same machine)
        + A worker can be **Standalone or in **Cluster
          (Recommended: Workers in *cluster is recommended)

--

  # JDBC Connector
    + Allows only one task per table