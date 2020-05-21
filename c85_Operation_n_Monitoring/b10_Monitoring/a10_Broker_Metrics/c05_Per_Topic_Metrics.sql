
  # Following are the metrics available for each topic

    + Bytes in rate
      - kafka.server:type=BrokerTopicMetrics,name=BytesInPerSec,topic=TOPICNAME
    + Bytes out rate
      - kafka.server:type=BrokerTopicMetrics,name=BytesOutPerSec,topic=TOPICNAME
    + Failed fetch rate
      - kafka.server:type=BrokerTopicMetrics,name=FailedFetchRequestsPerSec,topic=TOPICNAME
    + Failed produce rate
      - kafka.server:type=BrokerTopicMetrics,name=FailedProduceRequestsPerSec,topic=TOPICNAME
    + Messages in rate
      - kafka.server:type=BrokerTopicMetrics,name=MessagesInPerSec,topic=TOPICNAME
    + Fetch request rate
      - kafka.server:type=BrokerTopicMetrics,name=TotalFetchRequestsPerSec,topic=TOPICNAME
    + Produce request rate
      - kafka.server:type=BrokerTopicMetrics,name=TotalProduceRequestsPerSec,topic=TOPICNAME