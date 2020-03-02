
# Avoids incompatible schema evolution

kafka-avro-console-producer \
    --broker-list localhost:9092 --topic test-avro \
    --property schema.registry.url=http://127.0.0.1:8081 \
    --property value.schema='{"type":"int"}'
                                      ^^ This type is record in the existing schema

1
org.apache.kafka.common.errors.SerializationException: Error registering Avro schema: "int"
Caused by: io.confluent.kafka.schemaregistry.client.rest.exceptions.RestClientException: Schema being registered is incompatible with an earlier schema; error code: 409
	at io.confluent.kafka.schemaregistry.client.rest.RestService.sendHttpRequest(RestService.java:182)
	at io.confluent.kafka.schemaregistry.client.rest.RestService.httpRequest(RestService.java:203)
	at io.confluent.kafka.schemaregistry.client.rest.RestService.registerSchema(RestService.java:292)
	at io.confluent.kafka.schemaregistry.client.rest.RestService.registerSchema(RestService.java:284)
	at io.confluent.kafka.schemaregistry.client.rest.RestService.registerSchema(RestService.java:279)
	at io.confluent.kafka.schemaregistry.client.CachedSchemaRegistryClient.registerAndGetId(CachedSchemaRegistryClient.java:61)
	at io.confluent.kafka.schemaregistry.client.CachedSchemaRegistryClient.register(CachedSchemaRegistryClient.java:93)
	at io.confluent.kafka.serializers.AbstractKafkaAvroSerializer.serializeImpl(AbstractKafkaAvroSerializer.java:74)
	at io.confluent.kafka.formatter.AvroMessageReader.readMessage(AvroMessageReader.java:158)
	at kafka.tools.ConsoleProducer$.main(ConsoleProducer.scala:58)
	at kafka.tools.ConsoleProducer.main(ConsoleProducer.scala)

