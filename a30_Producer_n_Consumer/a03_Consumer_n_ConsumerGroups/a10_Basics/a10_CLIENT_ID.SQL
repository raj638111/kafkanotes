

-- CLIENT-ID

  Optional identifier of a kafka consumer *PASSED TO BROKER with
  every request. Provides ability to track the source of request
  by providing a logical application name

  https://jaceklaskowski.gitbooks.io/apache-kafka/kafka-properties-client-id.html

-- Example

./bin/kafka-consumer-groups.sh --bootstrap-server localhost:9092 --describe --group first_group
GROUP           TOPIC           PARTITION  CURRENT-OFFSET  LOG-END-OFFSET  LAG             CONSUMER-ID                                     HOST            CLIENT-ID
first_group     first_topic     0          1               1               0               consumer-1-a451f9ff-2e47-4bf9-a4c9-60bc3cb4f816 /192.168.0.13   consumer-1
first_group     first_topic     1          1               1               0               consumer-1-a451f9ff-2e47-4bf9-a4c9-60bc3cb4f816 /192.168.0.13   consumer-1
first_group     first_topic     2          1               1               0               consumer-1-a451f9ff-2e47-4bf9-a4c9-60bc3cb4f816 /192.168.0.13   consumer-1
