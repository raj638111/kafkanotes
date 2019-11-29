
-- create input topic

cd /Users/rgunasekaran/installations/kafka_2.11-2.3.0;
bin/kafka-topics.sh --create --zookeeper localhost:2181 --replication-factor 1 --partitions 1 --topic streams-plaintext-input

Created topic streams-plaintext-input.

-- create output topic

bin/kafka-topics.sh --create --zookeeper localhost:2181 --replication-factor 1 --partitions 1 --topic streams-wordcount-output
Created topic streams-wordcount-output.

-- start a kafka producer

bin/kafka-console-producer.sh --broker-list localhost:9092 --topic streams-plaintext-input
kafka streams udemy
kafka data processing
kafka streams course

-- verify the data has been written

bin/kafka-console-consumer.sh --bootstrap-server localhost:9092 --topic streams-plaintext-input --from-beginning

kafka streams udemy
kafka data processing
kafka streams course


-- start the streams application

bin/kafka-run-class.sh org.apache.kafka.streams.examples.wordcount.WordCountDemo

-- start a consumer on the output topic to verify the result

bin/kafka-console-consumer.sh --bootstrap-server localhost:9092 \
    --topic streams-wordcount-output \
    --from-beginning \
    --formatter kafka.tools.DefaultMessageFormatter \
    --property print.key=true \
    --property print.value=true \
    --property key.deserializer=org.apache.kafka.common.serialization.StringDeserializer \
    --property value.deserializer=org.apache.kafka.common.serialization.LongDeserializer

-- Note: KStream also creates its own internal topic

bin/kafka-topics.sh --zookeeper localhost:2181 --list

__consumer_offsets
first_topic
new_topic
streams-plaintext-input
streams-wordcount-KSTREAM-AGGREGATE-STATE-STORE-0000000003-changelog    (**internal kstream topic)
streams-wordcount-KSTREAM-AGGREGATE-STATE-STORE-0000000003-repartition  (**internal kstream topic)
streams-wordcount-output




