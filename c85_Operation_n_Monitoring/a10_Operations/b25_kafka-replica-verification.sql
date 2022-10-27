

  # Why needed?
    + To ensure that the replicas for a topic’s partitions are the same across the cluster

  # kafka-replica-verification.sh
    This tool will fetch messages from all the replicas for a
    given set of topic partitions and check that all messages
    exist on all replicas

  # Example
    Verify the replicas for the topics starting with “my-” on brokers 1 and 2

    kafka-replica-verification.sh --broker-list \
    kafka1.example.com:9092,kafka2.example.com:9092 --topic-white-list 'my-.*'

    2016-11-23 18:42:08,838: verification process is started.
    2016-11-23 18:42:38,789: max lag is 0 for partition [my-topic,7]
    at offset 53827844 among 10 partitions
    ...

