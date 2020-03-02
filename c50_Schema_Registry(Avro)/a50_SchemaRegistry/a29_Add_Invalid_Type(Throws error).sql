

root@docker-desktop:/# kafka-avro-console-producer     --broker-list 127.0.0.1:9092 --topic test-avro     --property schema.registry.url=http://127.0.0.1:8081     --property value.schema='{"type":"record","name":"myrecord","fields":[{"name":"f1","type":"string"}]}'
{"f1": 1}
org.apache.kafka.common.errors.SerializationException: Error deserializing json {"f1": 1} to Avro of schema {"type":"record","name":"myrecord","fields":[{"name":"f1","type":"string"}]}
Caused by: org.apache.avro.AvroTypeException: Expected string. Got VALUE_NUMBER_INT
	at org.apache.avro.io.JsonDecoder.error(JsonDecoder.java:698)
	at org.apache.avro.io.JsonDecoder.readString(JsonDecoder.java:227)
	at org.apache.avro.io.JsonDecoder.readString(JsonDecoder.java:214)
	at org.apache.avro.io.ResolvingDecoder.readString(ResolvingDecoder.java:201)
	at org.apache.avro.generic.GenericDatumReader.readString(GenericDatumReader.java:422)
	at org.apache.avro.generic.GenericDatumReader.readString(GenericDatumReader.java:414)
	at org.apache.avro.generic.GenericDatumReader.readWithoutConversion(GenericDatumReader.java:181)
	at org.apache.avro.generic.GenericDatumReader.read(GenericDatumReader.java:153)
	at org.apache.avro.generic.GenericDatumReader.readField(GenericDatumReader.java:232)
	at org.apache.avro.generic.GenericDatumReader.readRecord(GenericDatumReader.java:222)
	at org.apache.avro.generic.GenericDatumReader.readWithoutConversion(GenericDatumReader.java:175)
	at org.apache.avro.generic.GenericDatumReader.read(GenericDatumReader.java:153)
	at org.apache.avro.generic.GenericDatumReader.read(GenericDatumReader.java:145)
	at io.confluent.kafka.formatter.AvroMessageReader.jsonToAvro(AvroMessageReader.java:190)
	at io.confluent.kafka.formatter.AvroMessageReader.readMessage(AvroMessageReader.java:157)
	at kafka.tools.ConsoleProducer$.main(ConsoleProducer.scala:58)
	at kafka.tools.ConsoleProducer.main(ConsoleProducer.scala)