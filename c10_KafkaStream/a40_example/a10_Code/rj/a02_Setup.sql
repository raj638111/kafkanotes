
cd $HOME/kafka

-- Cleanup existing input & output topics

  ./bin/kafka-topics.sh --zookeeper 127.0.0.1:2181 --topic WordCountInput --delete
  ./bin/kafka-topics.sh --zookeeper 127.0.0.1:2181 --topic WordCountOutput --delete

-- Create Input & Output topics

  ./bin/kafka-topics.sh --zookeeper 127.0.0.1:2181 --topic WordCountInput --create --partitions 2 \
  --replication-factor 1

  ./bin/kafka-topics.sh --zookeeper 127.0.0.1:2181 --topic WordCountOutput --create --partitions 2 \
  --replication-factor 1

-- Use Consumer to read output topic

  kafka-console-consumer --bootstrap-server 127.0.0.1:9092 \
    --topic WordCountOutput \
    --from-beginning \
    --formatter kafka.tools.DefaultMessageFormatter \
    --property print.key=true \
    --property print.value=true \
    --property key.deserializer=org.apache.kafka.common.serialization.StringDeserializer \
    --property value.deserializer=org.apache.kafka.common.serialization.LongDeserializer


-- Run the streaming app

    scala -classpath target/scala-2.11/a40_example-assembly-1.0.jar rj.a10_StreamStarterApp

-- Write data to input topic & check the result in output topic ^^

    ./bin/kafka-console-producer.sh --broker-list localhost:9092 --topic WordCountInput













