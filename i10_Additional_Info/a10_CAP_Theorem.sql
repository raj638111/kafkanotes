

-- What part of CAP does Kafka support?

  ** I suppose Kafka has a tunable A or C

  Our goal was to support replication in a Kafka cluster
  within a single datacenter, where network partitioning
  is rare, so our design focuses on maintaining **Highly
  Available and **Strongly Consistent replicas

  https://engineering.linkedin.com/kafka/intra-cluster-replication-apache-kafka
  https://stackoverflow.com/a/51379079/892857