
-- Create & Populate topic

kafka-topics --zookeeper localhost:2181 --create --partitions 1 --replication-factor 1 --topic COMPLAINTS_AVRO

kafka-avro-console-producer --broker-list localhost:9092 --topic COMPLAINTS_AVRO --property value.schema='
{
"type": "record",
"name": "myrecord",
"fields": [
{"name": "customer_name", "type": "string" }
, {"name": "complaint_type", "type": "string" }
, {"name": "trip_cost", "type": "float" }
, {"name": "new_customer", "type": "boolean"}
]
}' << EOF
{"customer_name":"Carol", "complaint_type":"Late arrival", "trip_cost":19.60, "new_customer": false}
EOF


-- Create Stream

# Note***: no columns or data type specified
create stream complaints_avro with (kafka_topic='COMPLAINTS_AVRO',
value_format='AVRO');

(Not working for me...???)
describe extended complaints_avro;

Error issuing POST to KSQL server. path:/ksql
Caused by: Error reading entity from input stream.
Caused by: Cannot construct instance of
	`io.confluent.ksql.rest.entity.SourceDescription`, problem: keyFormat
 at
	[Source:
	(org.glassfish.jersey.message.internal.ReaderInterceptorExecutor$UnCloseableInpu
	tStream); line: 1, column: 1624] (through reference chain:
	io.confluent.ksql.rest.entity.KsqlEntityList[0]->io.confluent.ksql.rest.entity.S
	ourceDescriptionEntity["sourceDescription"])
Caused by: keyFormat

-- Load misformed data into topic
 (Cool: Error is thrown in producer instead of we have to check in the server log
    like CSV or JSON)

kafka-avro-console-producer  --broker-list localhost:9092 --topic COMPLAINTS_AVRO \
--property value.schema='
{
  "type": "record",
  "name": "myrecord",
  "fields": [
      {"name": "customer_name",  "type": "string" }
    , {"name": "complaint_type", "type": "string" }
    , {"name": "trip_cost", "type": "float" }
    , {"name": "new_customer", "type": "boolean"}
  ]
}' << EOF
{"customer_name":"Bad Data", "complaint_type":"Bad driver", "trip_cost": 22.40, "new_customer": ShouldBeABoolean}
EOF

org.apache.kafka.common.errors.SerializationException: Error deserializing json {"customer_name":"Bad Data", "complaint_type":"Bad driver", "trip_cost": 22.40, "new_customer": ShouldBeABoolean} to Avro of schema {"type":"record","name":"myrecord","fields":[{"name":"customer_name","type":"string"},{"name":"complaint_type","type":"string"},{"name":"trip_cost","type":"float"},{"name":"new_customer","type":"boolean"}]}
Caused by: com.fasterxml.jackson.core.JsonParseException: Unrecognized token 'ShouldBeABoolean': was expecting (JSON String, Number, Array, Object or token 'null', 'true' or 'false')
