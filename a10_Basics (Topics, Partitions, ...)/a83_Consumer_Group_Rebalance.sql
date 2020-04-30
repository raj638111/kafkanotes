

-- Rebalance in Consumer Group

    Every consumer in a consumer group is assigned one or more partition in a
    topic exclusively, and Rebalance is the re-assignment of partition
    ownership among consumers.

    A Rebalance happens when:

        1. A consumer JOINS the group
        2. A consumer SHUTS DOWN cleanly
        3. A consumer is considered DEAD by the group coordinator.
           This may happen after a crash or when the consumer is busy with a
           long-running processing, which means that no heartbeats has been sent
           in the meanwhile by the consumer to the group coordinator within the
           configured session interval new partitions are added

-- How it works?

    Being a group coordinator (one of the brokers in the cluster) and a group leader
    (the first consumer that joins a group) designated for a consumer group,
    Rebalance can be more or less described as follows:

    1. The leader receives a list of all consumers in the group from the
       group coordinator (this will include all consumers that sent a heartbeat
       recently and which are therefore considered alive) and is responsible for
       assigning a subset of partitions to each consumer.

    2. After deciding on the partition assignment (Kafka has a couple built-in partition
       assignment policies), the group leader sends the list of assignments to
       the group coordinator, which sends this information to all the consumers.

https://stackoverflow.com/questions/30988002/what-does-rebalancing-mean-in-apache-kafka-context