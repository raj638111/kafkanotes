

    # Why need REST proxy? #43

        + Some language do not have good native support for Avro, etc...

        + This allows non-java clients to make JSON & HTTP requests to
          the REST proxy, which in turn will translate that into
          AVRO or JSON or Binary

        + Integrated with Schema Registry so that consumers & producers can
          easily read & write kafka topic

    # Disadvantage

        + Using HTTP instead of native protocol decrease throughput 3-4 times

        + Upto producing application to batch events