
# Note here: JSON do not have type representation (ie no Schema)

-- Create topic

kafka-topics --zookeeper localhost:2181 --create --partitions 1 --replication-factor 1 --topic COMPLAINTS_JSON

-- Good data

kafka-console-producer --broker-list localhost:9092 --topic COMPLAINTS_JSON << EOF

{"customer_name":"Alice, Bob and Carole", "complaint_type":"Bad driver","trip_cost": 22.40, "new_customer": true}
EOF

-- Create stream

CREATE STREAM complaints_json (customer_name VARCHAR, complaint_type VARCHAR, trip_cost DOUBLE, new_customer BOOLEAN)
WITH (VALUE_FORMAT = 'JSON', KAFKA_TOPIC = 'COMPLAINTS_JSON');


select * from complaints_json;

-- Bad data

kafka-console-producer --broker-list localhost:9092 --topic COMPLAINTS_JSON << EOF

{"customer_name":"Bad Data", "complaint_type":"Bad driver", "trip_cost":22.40, "new_customer": ShouldBeABoolean}
EOF

-- KSQL server log

at [Source: (byte[])"{"customer_name":"Bad Data", "complaint_type":"Bad
driver", "trip_cost": 22.40, "new_customer": ShouldBeABoolean}"; line: 1,
column: 105]
Caused by: com.fasterxml.jackson.core.JsonParseException: Unrecognized
token 'ShouldBeABoolean': was expecting ('true', 'false' or 'null')







