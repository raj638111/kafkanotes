

 # As schema is enabled, we also have schema with each record #25
 # The key & value are in JSON as expected

 # Verify JSON data ^^ ...
 kafka-console-consumer --topic demo-2-distributed --from-beginning --bootstrap-server 127.0.0.1:9092
 {"schema":{"type":"string","optional":false},"payload":"hi"}
 {"schema":{"type":"string","optional":false},"payload":"hello"}