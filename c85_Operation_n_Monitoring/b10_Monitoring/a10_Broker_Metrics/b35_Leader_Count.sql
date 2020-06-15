
  # JMX MBean kafka.server:type=ReplicaManager,name=LeaderCount
    Value range Integer, zero or greater

  # Shows the number of partitions that the broker is currently
    the leader for

  # Important to check the leader count on a regular basis, possibly alerting
    on it, as it will indicate when the
    cluster is imbalanced even if the number of replicas are perfectly balanced in count
    and size across the cluster. This is because a broker can drop leadership for a partition
    for many reasons, such as a Zookeeper session expiration, and it will not automatically
    take leadership back once it recovers

