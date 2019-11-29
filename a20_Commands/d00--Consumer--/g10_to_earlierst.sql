
-- to-earliest

(Resets the offset in all the partitions to beginning)

./bin/kafka-consumer-groups.sh --bootstrap-server localhost:9092 --group first_group --reset-offsets --to-earliest --execute --topic first_topic

GROUP                          TOPIC                          PARTITION  NEW-OFFSET
first_group                    first_topic                    0          0
first_group                    first_topic                    2          0
first_group                    first_topic                    1          0


(Now consumer group reads all the messages start from the offset 0 in all partition)
./bin/kafka-console-consumer.sh --bootstrap-server 127.0.0.1:9092 --topic first_topic --group first_group
message
blue
red
india
germany
second message
first line
gree
black
usa
russia
3rd message
second line
yellow
white
france
china


./bin/kafka-consumer-groups.sh --bootstrap-server localhost:9092 --describe --group first_group

Consumer group 'first_group' has no active members.

GROUP           TOPIC           PARTITION  CURRENT-OFFSET  LOG-END-OFFSET  LAG             CONSUMER-ID     HOST            CLIENT-ID
first_group     first_topic     0          5               5               0               -               -               -
first_group     first_topic     1          6               6               0               -               -               -
first_group     first_topic     2          6               6               0               -               -               -