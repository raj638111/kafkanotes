

-- Preferred Replication Election

  # Why needed?
    When a broker is stopped and restarted, it does not resume leadership
    of any partitions automatically

  # Warning: Automatic Leader Re-balancing
    There is a broker configuration for automatic leader rebalancing,
    but it is not recommended for production use. There are significant
    performance impacts caused by the automatic balancing module,
    and it can cause a lengthy pause in client traffic for larger
    clusters.

  # How to trigger?
  kafka-preferred-replica-election.sh --zookeeper zoo1.example.com:2181/kafka-cluster

  Successfully started preferred replica election for partitions
  Set([my-topic,5], [my-topic,0], [my-topic,7], [my-topic,4],
  [my-topic,6], [my-topic,2], [my-topic,3], [my-topic,1])

  # Caveat & Solution
  #194
  Caveat: The above ^^ Command will not work for cluster with large no of partitions
          because large requests will fail to be written in ZNode (default is 1MB)
  Solution: Specify the partition for which leader election is needed in a JSON
            & use a slightly modified command
  {
    "partitions": [
    {
    "partition": 1,
    "topic": "foo"
    },
    {
    "partition": 2,
    "topic": "foobar"
    }
    ]
  }
  kafka-preferred-replica-election.sh --zookeeper zoo1.example.com:2181/kafka-cluster --path-to-json-file
  partitions.json
