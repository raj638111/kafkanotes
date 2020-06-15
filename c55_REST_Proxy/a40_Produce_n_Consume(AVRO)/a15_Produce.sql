
== Create topic #51

./kafka-topics.sh --create --zookeeper localhost:2181 --topic rest-avro --replication-factor 1 --partitions 1

== First Request with Schema specified ==

  -- Request

    Other (Schema + Data)

      {
        "value_schema": "{\"type\": \"record\", \"name\": \"User\", \"fields\": [{\"name\": \"name\", \"type\": \"string\"}, {\"name\" :\"age\",  \"type\": [\"null\",\"int\"]}]}",
        "records": [
          {
            "value": {"name": "testUser", "age": null }
          },
          {
            "value": {"name": "testUser", "age": {"int": 25} },
                                                  ^^ Here int is needed as  the data type
                                                     for the field 'age' is null or int
            "partition": 0
          }
        ]
      }

    Header
      Content-Type application/vnd.kafka.binary.v2+json
      Accept        application/vnd.kafka.v2+json, application/vnd.kafka+json, application/json

  -- Response


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
        }
      ],
      "key_schema_id": null,
      "value_schema_id": 21
    }
    Note: ^^ value_schema_id can be used for subsequent request instead of sending
             the schema (reduces the data size)
             ie Replace "value_schema" in request with "value_schema_id" (as Number & not string)

== Subsequent requests with Schema ID ^^

  -- Request

    Other (Schema + Data)

      {
        "value_schema_id": 21,
        "records": [
          {
            "value": {"name": "testUser", "age": null }
          },
          {
            "value": {"name": "testUser", "age": {"int": 25} },
            "partition": 0
          }
        ]
      }

    Header
      Content-Type application/vnd.kafka.binary.v2+json
      Accept        application/vnd.kafka.v2+json, application/vnd.kafka+json, application/json
