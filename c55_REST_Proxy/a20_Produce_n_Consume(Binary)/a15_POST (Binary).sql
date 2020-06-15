
== Prerequisite ==

  # Create the topic using command line (Not possible with REST)

  /Users/raj/kafka/bin $ ./kafka-topics.sh --create --zookeeper localhost:2181 \
  --topic rest-binary --replication-factor 1 --partitions 1

  Created topic rest-binary.

== Request ==

-- JSON

    # We are sending 3 records (All encoded in Base64)
    + 1st record
        - Has a key & value (Use base64 decoding to check the actual key & value)
    + 2nd record
        - Have only value. Sending that value to a specific partition
    + 3rd record
        - Has only value

{
  "records": [
    {
      "key": "a2V5",
      "value": "aGVsbG8gd29ybGQhISE="
    },
    {
      "value": "XCJyYW5kb206JSQh",
      "partition": 0
    },
    {
      "value": "bm8gcGFydGl0aW9ucw=="
    }
  ]
}
(Key & value ^^ are encoded as expected)

-- Query

    http://127.0.0.1:8082/topics/rest-binary
                                 ^ Is the topic name

-- Header

    Content-Type application/vnd.kafka.binary.v2+json
    Accept       application/vnd.kafka.v2+json, application/vnd.kafka+json, application/json

== Result ==

{
  "offsets": [
    {
      "partition": 0,
      "offset": 0,
      "error_code": null,
      "error": null
    },
    {
      "partition": 0,
      "offset": 1,
      "error_code": null,
      "error": null
    },
    {
      "partition": 0,
      "offset": 2,
      "error_code": null,
      "error": null
    }
  ],
  "key_schema_id": null,
  "value_schema_id": null
}