

-- How do I delete a topic, if the topic deletion is disabled?

  1.  Shut down all brokers in the cluster.
  2.  Remove the Zookeeper path /brokers/topics/TOPICNAME from the Kafka cluster
      path. Note that this node has child nodes that must be deleted first.
  3.  Remove the partition directories from the log directories on each broker.
      These will be named TOPICNAME-NUM, where NUM is the partition ID.
  4.  Restart all brokers.