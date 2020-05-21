

-- Under replicated partitions

  # JXM Bean
    + kafka.server:type=ReplicaManager,name=UnderReplicatedPartitions
    + Value: Integer; >= 0

  # Who provides this measurement?
    + Each broker provides this measurement

  # What does it provide?
    + No of brokers for which the broker is a leader & the follower has not caught up

-- Root cause

  + Under replicated partition reported by many brokers

    A steady (unchanging) number of under-replicated partitions reported by many of
    the brokers in a cluster normally indicates that one of the brokers in the cluster is offline.
    The count of under-replicated partitions across the entire cluster will equal the
    number of partitions that are assigned to that broker, and the broker that is down will
    not report a metric.
    (Read also: Preferred replica election)

  + Under replicated partition reported by a single broker

    This would be the case where other brokers are having a problem replicating messages
    from that one

  # Unbalanced partition or Leadership
    + Can be identified using
      - Partition count
      - Leader partition count
      - Bytes in
      - Bytes out
      Broker Partitions Leaders Bytes in  Bytes out
      1       100       50      3.56 MB/s 9.45 MB/s
      2       101       49      3.66 MB/s 9.25 MB/s
      3       100       50      3.23 MB/s 9.82 MB/s
      (Note here in this balanced cluster; all the numbers are even across all brokers)

    + How to mitigate?
      If the preferred replica election is already done, then would need
      to move partition from a heavily loaded broker to less heavily loaded broker
      (tools: kafka-reassign-partitions.sh tool, kafka-assigner tool (LinkedIn))

  # Broker Capacity limit (CPU, Disk IO, Network Throughput etc...)
    + Can be identified at OS level using,
      - CPU Utilization
      - Inbound N/W throughput
      - Outbound network throughput
      - Disk average wait time
      - Disk percent utilization
      which would typically result in under replicated partition

  # Host Level problem
    + Can be,
      - Hardware failures
        . Can be detected using IPMI (Intelligent Platform Management Interface)
        . Check kernel log using `dmesg`
        . Disk failure
        . Network hardware issue (Bad connector, etc...)
      - Conflicts with another process
        . Some other process is taking lots of resources
        . Use `top` to identify this kind of process
      - Local configuration differences
        . Very difficult to find
        . Recommended to use configuration management tools like
          Chef or Puppet








-- Example diagnosis

  kafka-topics.sh --zookeeper zoo1.example.com:2181/kafka-cluster --describe --under-replicated
  Topic: topicOne Partition: 5 Leader: 1 Replicas: 1,2 Isr: 1
  Topic: topicOne Partition: 6 Leader: 3 Replicas: 2,3 Isr: 3
  Topic: topicTwo Partition: 3 Leader: 4 Replicas: 2,4 Isr: 4
  Topic: topicTwo Partition: 7 Leader: 5 Replicas: 5,2 Isr: 5
  ...

  In this example, the common broker is number 2. This indicates that this broker is
  having a problem with message replication, and will lead us to focus our investigation
  on that one broker. If there is no common broker, there is likely a cluster-wide problem

