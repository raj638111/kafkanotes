


    # Schema Registry Support for avro data #51
        + REST proxy can communicate with Schema Registry
          therefore provide avro data produce/consume support

    # Schema
        + Is sent as JSON (Stringified)

    # Avro Payload
        + Is encoded in JSON

    # Producer Call sequence

        + First produce call
            - Returns schema ID

        + Subsequent call
            - Schema ID can be used instead of sending the schema
              making the data smaller
