

----------------------------------
-- Consumer Group: 101
----------------------------------

  + **When Consumer Group is used to read the topic,
    offset of all the message read is COMMITTED


----------------------------------
-- Read using consumer group
----------------------------------

Note:
  Here we have 2 consumers in the same consumer group
  Each consumer will read from a specific set of partition out of the 3 partition
    we have in this topic. Example Consumer 1 might read from partition 1
    Consumer 2 might read from partition 2 & 3
  ** Increasing the no of consumer in consumer group will re-balance the load
    Example: If we bring in the 3rd consumer, then one of the partition
    from Consumer 2 will be read by the 3rd consumer, leaving the 2nd consumer
    with only one partition to read


-- Consumer 1
./bin/kafka-console-consumer.sh --bootstrap-server 127.0.0.1:9092 --topic first_topic --group first_group


-- Consumer 2
./bin/kafka-console-consumer.sh --bootstrap-server 127.0.0.1:9092 --topic first_topic --group first_group
