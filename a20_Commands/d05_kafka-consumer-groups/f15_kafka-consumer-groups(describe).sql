
------------------------------------------------------------------------------------
-- describe (When ONE live/active consumer is available for the consumer group)
------------------------------------------------------------------------------------

# Provides information about
    + Lag by a consumer (Consumer ID) which is reading from a partition

[Start a single consumer for a consumer group]
./bin/kafka-console-consumer.sh --bootstrap-server 127.0.0.1:9092 --topic first_topic --group first_group
...


./bin/kafka-consumer-groups.sh --bootstrap-server localhost:9092 --describe --group first_group
GROUP           TOPIC           PARTITION  CURRENT-OFFSET  LOG-END-OFFSET  LAG             CONSUMER-ID                                     HOST            CLIENT-ID
first_group     first_topic     0          1               1               0               consumer-1-a451f9ff-2e47-4bf9-a4c9-60bc3cb4f816 /192.168.0.13   consumer-1
first_group     first_topic     1          1               1               0               consumer-1-a451f9ff-2e47-4bf9-a4c9-60bc3cb4f816 /192.168.0.13   consumer-1
first_group     first_topic     2          1               1               0               consumer-1-a451f9ff-2e47-4bf9-a4c9-60bc3cb4f816 /192.168.0.13   consumer-1

- CONSUMER-ID         Consumer ID of the active consumer
                     (Note the only consumer id of the consumer we started above)
- CURRENT-OFFSET      The last offset that is read by the consumer (id)
- LOG-END-OFFSET      The last offset in the partition
- LAG                 No of messages yet to be read
- HOST                The host in which the consumer resides
- CLIENT-ID           Optional identifier of a kafka consumer *PASSED TO BROKER with
                      every request. Provides ability to track the source of request
                      by providing a logical application name
                      https://jaceklaskowski.gitbooks.io/apache-kafka/kafka-properties-client-id.html

------------------------------------------------------------------------------------
-- describe (When no live/active consumer is available for the consumer group)
------------------------------------------------------------------------------------

./bin/kafka-consumer-groups.sh --bootstrap-server localhost:9092 --describe --group first_group

Consumer group 'first_group' has no active members.
(Note: This message basically means we have stopped all the consumer in the consumer group)

GROUP           TOPIC           PARTITION  CURRENT-OFFSET  LOG-END-OFFSET  LAG             CONSUMER-ID     HOST            CLIENT-ID
first_group     first_topic     0          1               1               0               -               -               -
first_group     first_topic     1          1               1               0               -               -               -
first_group     first_topic     2          1               1               0               -               -               -


