

    # Avro Byte
        + An avro record consist of schema + data

    # With Schema registry
        + The schema is externalized in Schema registry
        + Only the data part of Avro Byte is send to Kafka

        + Advantage
            - We are no longer storing the schema in reach record
              there by reducing the message size a **lot

        + Disadvantage
            - If schema registry is not available, would break producer & consumer