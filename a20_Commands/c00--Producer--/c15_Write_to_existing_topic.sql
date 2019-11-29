
-- Write message to topic

./bin/kafka-console-producer.sh --broker-list 127.0.0.1:9092 --topic first_topic

>first message
>second message
> ^C (Control C)

-- Write message to topic (Override default properties using --producer-property)


./bin/kafka-console-producer.sh --broker-list 127.0.0.1:9092 --topic first_topic --producer-property acks=all

>message 3
>message 4
>^C


