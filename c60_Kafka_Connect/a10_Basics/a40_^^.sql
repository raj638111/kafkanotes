

    # Connectors #8
        + Kafka connect cluster has multiple loaded Connectors
        + Connectors are basically Jars

    # Tasks
        + Connectors + User Configuration => Tasks
        + A task is linked to a connector configuration

    # Job
        + A Job configuration can spaws multiple tasks

    # Workers
        + Tasks are executed by Kafka Connect Workers (Servers)
        + A worker is a single java process
        + A worked can be **Standalone or in **Cluster
          (Recommended: Workers in *cluster is recommended)

