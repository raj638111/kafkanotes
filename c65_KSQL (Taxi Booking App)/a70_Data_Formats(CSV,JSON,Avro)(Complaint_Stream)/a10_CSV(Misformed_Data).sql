

#17
-- Misformed data
  If a Stream is connected to CSV topic, and if there is a misformed
  record in CSV topic vis-a-vis the table schema, then that
  record will be dropped in the Stream

  This dropped values can be checked in KSQL server log

  kafka-topics --zookeeper localhost:2181 --create --partitions 1 --replication-factor 1 --topic COMPLAINTS_CSV

  kafka-console-producer --broker-list localhost:9092 --topic COMPLAINTS_CSV << EOF
  Alice, Late arrival, 43.10, true
  EOF

  CREATE STREAM complaints_csv (customer_name VARCHAR, complaint_type VARCHAR, trip_cost DOUBLE, new_customer BOOLEAN) \
    WITH (VALUE_FORMAT = 'DELIMITED', KAFKA_TOPIC = 'COMPLAINTS_CSV');

  select * from complaints_csv emit changes;

  # Misformed data
  kafka-console-producer --broker-list localhost:9092 --topic COMPLAINTS_CSV << EOF
  Alice, Bob and Carole, Bad driver, 43.10, true
  EOF

-- How to check in server log

  confluent log ksql-server

  confluent log ksql-server -f