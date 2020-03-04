
# Note: We do **not need worker.properties unlike in Standalone mode #25
# These are standard kafka connect parameters, need for ALL connectors

name=file-stream-demo-distributed
connector.class=org.apache.kafka.connect.file.FileStreamSourceConnector
tasks.max=1
# Parameters can be found here: https://github.com/apache/kafka/blob/trunk/connect/file/src/main/java/org/apache/kafka/connect/file/FileStreamSourceConnector.java
file=demo-file.txt
topic=demo-2-distributed

# Added configuration for the distributed mode:
# Converts all the key into JSON document (***schema.enable should need to be enabled to true)
key.converter=org.apache.kafka.connect.json.JsonConverter
key.converter.schemas.enable=true

# Converts all the value into JSON document
value.converter=org.apache.kafka.connect.json.JsonConverter
value.converter.schemas.enable=true

