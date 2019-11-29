------------------------------------------------------------------------------------
-- List all topic related available options
------------------------------------------------------------------------------------


kafka-topics.sh

Create, delete, describe, or change a topic.
Option                                   Description
------                                   -----------
--alter                                  Alter the number of partitions,
...


------------------------------------------------------------------------------------
-- Topic: first_topic
------------------------------------------------------------------------------------

./bin/kafka-topics.sh --zookeeper 127.0.0.1:2181 --topic first_topic --create --partitions 3 \
--replication-factor 2

Error while executing topic command : Replication factor: 2 larger than available brokers: 1.

#** BC
  + Not possible to have replication more than the no of brokers we have

-----------

./bin/kafka-topics.sh --zookeeper 127.0.0.1:2181 --topic first_topic --create --partitions 3 \
--replication-factor 1

Created topic first_topic

------------------------------------------------------------------------------------
-- Topic: second_topic
------------------------------------------------------------------------------------

kafka-topics.sh --zookeeper 127.0.0.1:2181 --topic second_topic --create --partitions 6 \
--replication-factor 1

Created topic second_topic.
