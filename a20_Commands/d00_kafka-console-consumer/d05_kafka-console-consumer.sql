

Note:
  + **When no consumer group is specified, Kafka generates a random
      consumer group name for us

-- Start from current time

./bin/kafka-console-consumer.sh --bootstrap-server 127.0.0.1:9092 --topic first_topic

-- Start from the earliest offset available in the topic

./bin/kafka-console-consumer.sh --bootstrap-server 127.0.0.1:9092 --topic first_topic --from-beginning

first message
second message
some message
acked message

