

kafka-avro-console-consumer --topic test-avro \
    --bootstrap-server 127.0.0.1:9092 \
    --property schema.registry.url=http://127.0.0.1:8081 \
    --from-beginning

{"f1":"value1"}
{"f1":"value2"}
{"f1":"value3"}

