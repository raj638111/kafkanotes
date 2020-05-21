
#205
-- Default Behaviour

  # Messages are read one per line
    + Done by class `kafka.tools.LineMessageReader`
      - --property
        . ignore.error
        . parse.key
        . key.separator

  # Tab character separates key & value
    (Key is null when no tab character is provided)

-- Example
  kafka-console-producer.sh --broker-list kafka1.example.com:9092,kafka2.example.com:9092 \
  --topic my-topic

-- Two ways to provide producer configuration
  1. --producer.config CONFIG_FILE
  2. --producer-property KEY=VALUE

-- Other Useful options
  1. --key-serializer CLASSNAME
    + Default = kafka.serializer.DefaultEncoder
  2. --value-serializer CLASSNAME
    + Default = kafka.serializer.DefaultEncoder
  3. --compression-codec STRING
  4. --sync
    + Wait for each message to be acknowledged before sending the next one


--