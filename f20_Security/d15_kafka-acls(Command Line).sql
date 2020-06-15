
-- kafka-acls

  # Example

    kafka-acls --authorize-properties  zookeeper.connect=localhost:2181 \
    --add \
    --allow-principal User:otheruser \
    --operation all \
    --topic acl-test
    Allow ^^ otheruser full access to the topic acl-test

  # Zookeeper
    + ACLs are managed in Zookeeper
