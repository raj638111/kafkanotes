
# Create topic

kafka-topics --create --zookeeper localhost:2181 --topic rest-json \
--replication-factor 1 --partitions 1

-- Request #49

# We are sending 3 records here
    + 1st record: Value is an object
    + 2nd record: Value is an array
    + 3rd record: Number

Query
    http://127.0.0.1:8082/topics/rest-json

JSON
{
  "records": [
    {
      "key": "somekey",
      "value": {"foo": "bar"}
    },
    {
      "value": [ "foo", "bar" ],
      "partition": 0
    },
    {
      "value": 53.5
    }
  ]
}

Header
    Content-Type application/vnd.kafka.json.v2+json
    Accept       application/vnd.kafka.v2+json, application/vnd.kafka+json, application/json
