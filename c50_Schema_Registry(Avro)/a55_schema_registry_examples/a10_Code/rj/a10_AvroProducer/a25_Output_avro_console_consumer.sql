

kafka-avro-console-consumer --topic customer-avro \
    --bootstrap-server 127.0.0.1:9092 \
    --property schema.registry.url=http://127.0.0.1:8081 \
    --from-beginning

{"first_name":"John","last_name":"Doe","age":34,"height":178.0,"weight":75.0,"automated_email":false}