

-- Cleanup existing input & output topics

  ./bin/kafka-topics.sh --zookeeper 127.0.0.1:2181 --topic WordCountInput --delete
  ./bin/kafka-topics.sh --zookeeper 127.0.0.1:2181 --topic WordCountOutput --delete

-- Create Input & Output topics

  ./bin/kafka-topics.sh --zookeeper 127.0.0.1:2181 --topic WordCountInput --create --partitions 2 \
  --replication-factor 1

  ./bin/kafka-topics.sh --zookeeper 127.0.0.1:2181 --topic WordCountOutput --create --partitions 2 \
  --replication-factor 1

-- Use Consumer to read output topic

  ./bin/kafka-console-consumer.sh --bootstrap-server 127.0.0.1:9092 \
    --topic WordCountOutput \
    --from-beginning \
    --formatter kafka.tools.DefaultMessageFormatter \
    --property print.key=true \
    --property print.value=true \
    --property key.deserializer=org.apache.kafka.common.serialization.StringDeserializer \
    --property value.deserializer=org.apache.kafka.common.serialization.LongDeserializer



