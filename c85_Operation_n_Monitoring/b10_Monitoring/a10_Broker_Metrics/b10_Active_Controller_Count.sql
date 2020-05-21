

-- Active Controller Count

  # JXM Bean
    kafka.controller:type=KafkaController,name=ActiveControllerCount
    Value: 0 or 1

  # Only 1 broker in the cluster is always an active controller

    + If 2 brokers are shown as active controller, probably 1 broker is stuck
      to exit. This will cause issues with admin tasks like,
      - Partition Moves
      - etc...
