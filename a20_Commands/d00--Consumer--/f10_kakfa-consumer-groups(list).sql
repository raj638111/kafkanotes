
Note:
  + **When no consumer group is specified, Kafka generates a random
      consumer group name for us


./bin/kafka-consumer-groups.sh --bootstrap-server localhost:9092 --list

first_group
console-consumer-78091  //** This is the kafka generated consumer group name
                        //   when we do not explicitly specify a consumer
                        //   group

