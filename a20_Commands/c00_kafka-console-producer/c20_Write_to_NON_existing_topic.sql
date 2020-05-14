
  # When we write to a non-existing topic, a new topic of that name is created

  # Best Practice
    + Always create a topic before hand with the required partition count & replication
      factor, as the default partition count & replication count might not be the one
      we want

-- Example

./bin/kafka-console-producer.sh --broker-list 127.0.0.1:9092 --topic new_topic

>new topic message
[2019-06-29 07:48:58,614] WARN [Producer clientId=console-producer] Error while fetching metadata with correlation id 3 : {new_topic=LEADER_NOT_AVAILABLE} (org.apache.kafka.clients.NetworkClient)
>message 2
>^C

** We get this ^^ error message, as there was no leader available at the time of
  writing the message and kafka producer waited to get a leader available,
  so that is why we get the warning message.
  Once the leader is available, then the producer writes the message to the topic


./bin/kafka-topics.sh --zookeeper 127.0.0.1:2181 --list

first_topic
new_topic

