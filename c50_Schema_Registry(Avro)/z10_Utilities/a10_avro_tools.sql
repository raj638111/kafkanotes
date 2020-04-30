
# Can be used to read avro file

-- Jar
    wget https://repo1.maven.org/maven2/org/apache/avro/avro-tools/1.8.2/avro-tools-1.8.2.jar

-- Commands

    # Help
        + java -jar avro-tools-1.8.2.jar

    # Print data
        + java -jar avro-tools-1.8.2.jar --pretty customer-specific.avro

    # Get schema
        + java -jar avro-tools-1.8.2.jar getSchema customer-specific.avro

