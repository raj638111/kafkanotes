

    # 48

== Create Consumer ==

  -- Request

    POST
      + http://{{ hostname  }}:8082/consumers/my-consumer-group

    Other
      {
        "name": "my_consumer_binary",
        "format": "binary",
        "auto.offset.reset": "earliest",
        "auto.commit.enable": "false"
      }

    Header
      + Content-Type = application/vnd.kafka.v2+json


  -- Response

    {
      "instance_id": "my_consumer_binary",
      "base_uri": "http://127.0.0.1:8082/consumers/my-consumer-group/instances/my_consumer_binary"
    }

== Subscribe Consumer ==


  + In subscribe, we subscribe the consumer to list of topics

  -- Request

    POST
      + http://{{ hostname  }}:8082/consumers/my-consumer-group/instances/my_consumer_binary/subscription
        (Use URL ^^ returned from the previous call)

    Other
      {
        "topics": [
          "rest-binary"
        ]
      }

    Header
      + Content-Type = application/vnd.kafka.v2+json

  -- Response

    (Empty response)


== Consume using Consumer ==

  -- Request

    GET
      + http://{{ hostname  }}:8082/consumers/my-consumer-group/instances/my_consumer_binary/records?timeout=3000&max_bytes=300000

    Header
      + Accept = application/vnd.kafka.binary.v2+json


  -- Response

  [
    {
      "topic": "rest-binary",
      "key": "a2V5",
      "value": "aGVsbG8gd29ybGQhISE=",
      "partition": 0,
      "offset": 0
    },
    ...
    {
      "topic": "rest-binary",
      "key": null,
      "value": "bm8gcGFydGl0aW9ucw==",
      "partition": 0,
      "offset": 2
    }
  ]

== Commit Offset ==

  -- Request

    POST = http://{{ hostname  }}:8082/consumers/my-consumer-group/instances/my_consumer_binary/offsets

    Other
      {
        "offsets": [
          {
            "topic": "rest-binary",
            "partition": 0,
            "offset": 2
          }
        ]
      }

    Header
      + Content-Type = application/vnd.kafka.v2+json


  -- Response

    (Empty response)

== Delete Consumer ==

  -- Request

    DELETE = http://{{ hostname  }}:8082/consumers/my-consumer-group/instances/my_consumer_binary

    Header
      + Content-Type = application/vnd.kafka.v2+json

  -- Response

    (Empty response)



