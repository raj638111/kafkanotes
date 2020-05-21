

-- Stop KSQL server in interactive mode

confluent stop ksql-server

-- Run the KSQL script in KSQL server in headless mode

/opt/confluent/bin/ksql-server-start /opt/confluent/etc/ksql/ksql-server.properties --queries-file ./<script>.ksql

-- Validate if KSQl server is running in headless mode

ksql
# ^^ Firing up KSQl CLI should fail

# Check kafka topic availability
# Using console consumer to print the resultant topic

