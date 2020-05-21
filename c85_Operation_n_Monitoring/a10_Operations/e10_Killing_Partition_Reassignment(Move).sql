

-- Normal partition reassignment flow

  1. Reassignment is requested (Zookeeper node is created).
  2. Cluster controller adds partitions to new brokers being added.
  3. New brokers begin replicating each partition until it is in-sync.
  4. Cluster controller removes the old brokers from the partition replica list.

-- Why kill the above ^^^ process in the middle?

  + when a broker fails in the middle of a reassignment and cannot immediately be
    restarted. This results in a reassignment that will never finish, which prevents
    starting any additional reassignments

-- How to kill an in in-progress partition reassignment?

  1. Remove the /admin/reassign_partitions Zookeeper node from the Kafka cluster path
  2. Force a controller move