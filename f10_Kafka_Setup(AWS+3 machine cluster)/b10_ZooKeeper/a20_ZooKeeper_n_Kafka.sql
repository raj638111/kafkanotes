
-- How is Zookeeper used in kafka?

  # Broker registration

    + Zookeeper keeps the broker list current
      (ie if a broker did not send a heart beat it is removed from the list)

  # Topic maintenance

    + Topics configurations like partitions, replication factor etc...
    + List of ISR for each partitions

  # Leader Election

    + Performs leader election in case a leader broker (also called as ***Controller)
      goes down

    + Done through voting mechanism in which Zookeeper votes for a server to become
      a leader

  # Kafka Cluster ID

    + Stores Kafka Cluster ID (Randomly generated at 1st startup of cluster)

  # Storing ACL

    + Stored when Security is enabled
    + ACL can be added for?
      . Topics
      . Consumer Groups
      . Users

  # Store Quotas





