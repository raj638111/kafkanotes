
-- shift-by

(Shift the offset in all partitions by N number of messages)

./bin/kafka-consumer-groups.sh --bootstrap-server localhost:9092 --group first_group --reset-offsets --shift-by -3 --execute --topic first_topic
             ^ Positive number moves the offset forward
               Negative number moves the offset behind

GROUP                          TOPIC                          PARTITION  NEW-OFFSET
first_group                    first_topic                    0          2
first_group                    first_topic                    2          3
first_group                    first_topic                    1          3


./bin/kafka-consumer-groups.sh --bootstrap-server localhost:9092 --describe --group first_group

Consumer group 'first_group' has no active members.

GROUP           TOPIC           PARTITION  CURRENT-OFFSET  LOG-END-OFFSET  LAG             CONSUMER-ID     HOST            CLIENT-ID
first_group     first_topic     0          2               5               3               -               -               -
first_group     first_topic     1          3               6               3               -               -               -
first_group     first_topic     2          3               6               3               -               -               -


./bin/kafka-console-consumer.sh --bootstrap-server 127.0.0.1:9092 --topic first_topic --group first_group

red
india
germany
black
usa
russia
white
france
china