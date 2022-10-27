
-- Changing a partition's replicas (to different brokers)

  # Why is it done?
    + If a topic`s  partitions are not balanced across the cluster,
      causing uneven load on brokers
    + If a broker is taken offline & the partition is under replicated
    + If a new broker is added & needs to receive a share of the cluster load

  # How to do that?
    + Is done in a 2 step process + 3rd optional step

  # Step 1: (Generate partition moves)
    + a. Create a file that contains topics for which partition move needs to happen
    + b. Use that file ^^^ to generate a set of partition moves

    kafka-reassign-partitions.sh --zookeeper zoo1.example.com:2181/kafka-cluster --generate \
    --topics-to-move-json-file topics.json --broker-list 0,1
                                                          ^^ Note the brokers to which the
                                                          reassigned partition needs to be moved

    Current partition replica assignment (***Save this in a file,
      if we need to role back the reassignment)
    {"version":1,"partitions":[{"topic":"my-topic","partition":5,"replicas":[0,1]},
    {"topic":"my-topic","partition":10,"replicas":[1,0]},{"topic":"mytopic","
    partition":1,"replicas":[...

    Proposed partition reassignment configuration
    {"version":1,"partitions":[{"topic":"my-topic","partition":5,"replicas":[0,1]},
    {"topic":"my-...


  # Step 2: (Perform partition moves)
  ** Note: This reassignment is initiated by the Cluster Controller (which increases the replication
      factor)
  (Once reassignment is complete, old replicas will be deleted by Controller (which decrease the
    replication factor to original size)

  kafka-reassign-partitions.sh --zookeeper zoo1.example.com:2181/kafka-cluster --execute
  --reassignment-json-file reassign.json

  Current partition replica assignment
  {"version":1,"partitions":[{"topic":"my-topic","partition":5,"replicas":[0,1]},
  {"topic":"my-topic","...
  Save this to use as the --reassignment-json-file option during
  rollback
  Successfully started reassignment of partitions {"version":1,"partitions":
  [{"topic":"my-topic","partition":5,"replicas":[0,1]},{"topic":"mytopic","
  partition":0,"replicas...

  # Step 3 (Verify the status of reassignment)

  kafka-reassign-partitions.sh --zookeeper zoo1.example.com:2181/kafka-cluster --verify \
  --reassignment-json-file reassign.json

  Status of partition reassignment:
  Reassignment of partition [my-topic,5] completed successfully
  Reassignment of partition [my-topic,0] completed successfully
  ...


-- Best practice

Partition reassignments have a big impact on the performance of
your cluster, as they will cause changes in the consistency of the
memory page cache and use network and disk I/O. Breaking reassignments
into many small steps is a good idea to keep this to a
minimum


