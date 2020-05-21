
-- Create topic & add data

kafka-topics --zookeeper localhost:2181 --create --partitions 2 --replication-factor 1 --topic DRIVER_PROFILE


kafka-console-producer --broker-list localhost:9092 --topic DRIVER_PROFILE << EOF
{"driver_name":"Mr. Speedy", "countrycode":"AU", "rating":2.4}
EOF

-- Create stream

CREATE STREAM DRIVER_PROFILE (driver_name VARCHAR, countrycode VARCHAR, rating DOUBLE)
  WITH (VALUE_FORMAT = 'JSON', KAFKA_TOPIC = 'DRIVER_PROFILE');

